import 'package:dio/dio.dart';
import 'package:phluts/src/framework/phluts_service.dart';
import 'package:phluts/src/models/phluts_artifact_type.dart';
import 'package:phluts/src/models/phluts_cache_config.dart';
import 'package:phluts/src/models/phluts_cache.dart';
import 'package:phluts/src/services/phluts_cache_service.dart';
import 'package:phluts_logger/phluts_logger.dart';

/// Service for fetching screens from Phluts Cloud with caching support.
///
/// This service automatically caches screens and compares versions
/// to avoid unnecessary network requests.
class PhlutsCloud {
  const PhlutsCloud._();

  static final Dio _dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );

  static const String _baseUrl = 'https://api.phluts.dev';

  /// Gets the fetch URL for a given artifact type.
  static String _getFetchUrl(PhlutsArtifactType artifactType) {
    switch (artifactType) {
      case PhlutsArtifactType.screen:
        return '$_baseUrl/screens';
      case PhlutsArtifactType.theme:
        return '$_baseUrl/themes';
    }
  }

  /// Gets the query parameter name for a given artifact type.
  static String _getQueryParamName(PhlutsArtifactType artifactType) {
    switch (artifactType) {
      case PhlutsArtifactType.screen:
        return 'screenName';
      case PhlutsArtifactType.theme:
        return 'themeName';
    }
  }

  /// Tracks artifacts currently being fetched in background to prevent duplicates.
  static final Map<PhlutsArtifactType, Set<String>> _backgroundFetchInProgress = {
    PhlutsArtifactType.screen: {},
    PhlutsArtifactType.theme: {},
  };

  /// Fetches an artifact from Phluts Cloud with intelligent caching.
  ///
  /// Uses the global cache configuration from [PhlutsService.defaultCacheConfig],
  /// which is set via [Phluts.initialize].
  static Future<Response?> _fetchArtifact({
    required PhlutsArtifactType artifactType,
    required String artifactName,
  }) async {
    final options = PhlutsService.options;
    if (options == null) {
      throw Exception('PhlutsOptions is not set');
    }

    final cacheConfig = PhlutsService.defaultCacheConfig;

    // Handle network-only strategy
    if (cacheConfig.strategy == PhlutsCacheStrategy.networkOnly) {
      return _fetchArtifactFromNetwork(
        artifactType: artifactType,
        artifactName: artifactName,
        saveToCache: false,
      );
    }

    // Get cached artifact
    final cachedArtifact = await PhlutsCacheService.getCachedArtifact(
      artifactName,
      artifactType,
    );

    // Handle cache-only strategy
    if (cacheConfig.strategy == PhlutsCacheStrategy.cacheOnly) {
      if (cachedArtifact != null) {
        return _buildArtifactCacheResponse(artifactType, cachedArtifact);
      }
      throw Exception(
        'No cached data available for $artifactType $artifactName (cache-only mode)',
      );
    }

    // Check if cache is valid based on maxAge (sync to avoid double cache read)
    final isCacheValid = PhlutsCacheService.isCacheValid(
      cachedArtifact,
      cacheConfig.maxAge,
    );

    // Handle different strategies
    switch (cacheConfig.strategy) {
      case PhlutsCacheStrategy.networkFirst:
        return _handleArtifactNetworkFirst(
          artifactType: artifactType,
          artifactName: artifactName,
          cachedArtifact: cachedArtifact,
        );

      case PhlutsCacheStrategy.cacheFirst:
        return _handleArtifactCacheFirst(
          artifactType: artifactType,
          artifactName: artifactName,
          cachedArtifact: cachedArtifact,
          isCacheValid: isCacheValid,
          config: cacheConfig,
        );

      case PhlutsCacheStrategy.optimistic:
        return _handleArtifactOptimistic(
          artifactType: artifactType,
          artifactName: artifactName,
          cachedArtifact: cachedArtifact,
          isCacheValid: isCacheValid,
          config: cacheConfig,
        );

      case PhlutsCacheStrategy.cacheOnly:
      case PhlutsCacheStrategy.networkOnly:
        // Already handled above
        return _fetchArtifactFromNetwork(
          artifactType: artifactType,
          artifactName: artifactName,
          saveToCache: false,
        );
    }
  }

  /// Fetches a screen from Phluts Cloud with intelligent caching.
  ///
  /// Uses the global cache configuration from [PhlutsService.defaultCacheConfig],
  /// which is set via [Phluts.initialize].
  static Future<Response?> fetchScreen({required String routeName}) async {
    return _fetchArtifact(
      artifactType: PhlutsArtifactType.screen,
      artifactName: routeName,
    );
  }

  /// Handles network-first strategy: Try network, fallback to cache.
  static Future<Response?> _handleArtifactNetworkFirst({
    required PhlutsArtifactType artifactType,
    required String artifactName,
    PhlutsCache? cachedArtifact,
  }) async {
    try {
      return await _fetchArtifactFromNetwork(
        artifactType: artifactType,
        artifactName: artifactName,
        saveToCache: true,
      );
    } catch (e) {
      // Network failed, use cache as fallback
      if (cachedArtifact != null) {
        Log.d(
          'PhlutsCloud: Network failed, using cached data for ${artifactType.name} $artifactName',
        );
        return _buildArtifactCacheResponse(artifactType, cachedArtifact);
      }
      rethrow;
    }
  }

  /// Handles cache-first strategy: Use valid cache, fallback to network.
  static Future<Response?> _handleArtifactCacheFirst({
    required PhlutsArtifactType artifactType,
    required String artifactName,
    PhlutsCache? cachedArtifact,
    required bool isCacheValid,
    required PhlutsCacheConfig config,
  }) async {
    // If cache is valid and exists, use it
    if (cachedArtifact != null && isCacheValid) {
      // Optionally refresh in background
      if (config.refreshInBackground) {
        _fetchAndUpdateArtifactInBackground(
          artifactType: artifactType,
          artifactName: artifactName,
          cachedVersion: cachedArtifact.version,
        );
      }
      return _buildArtifactCacheResponse(artifactType, cachedArtifact);
    }

    // Cache invalid or doesn't exist, fetch from network
    try {
      return await _fetchArtifactFromNetwork(
        artifactType: artifactType,
        artifactName: artifactName,
        saveToCache: true,
      );
    } catch (e) {
      // Network failed, use stale cache if available
      if (cachedArtifact != null) {
        Log.d(
          'PhlutsCloud: Using stale cache for ${artifactType.name} $artifactName due to network error',
        );
        return _buildArtifactCacheResponse(artifactType, cachedArtifact);
      }
      rethrow;
    }
  }

  /// Handles optimistic strategy: Return cache immediately, update in background.
  static Future<Response?> _handleArtifactOptimistic({
    required PhlutsArtifactType artifactType,
    required String artifactName,
    PhlutsCache? cachedArtifact,
    required bool isCacheValid,
    required PhlutsCacheConfig config,
  }) async {
    // If cache exists (show stale cache while revalidating)
    if (cachedArtifact != null) {
      // Update in background if configured or cache is stale
      if (config.refreshInBackground || !isCacheValid) {
        _fetchAndUpdateArtifactInBackground(
          artifactType: artifactType,
          artifactName: artifactName,
          cachedVersion: cachedArtifact.version,
        );
      }
      return _buildArtifactCacheResponse(artifactType, cachedArtifact);
    }

    // No cache, must fetch from network
    return _fetchArtifactFromNetwork(
      artifactType: artifactType,
      artifactName: artifactName,
      saveToCache: true,
    );
  }

  /// Makes a network request to fetch artifact data.
  static Future<Response> _makeArtifactRequest({
    required PhlutsArtifactType artifactType,
    required String artifactName,
  }) {
    final options = PhlutsService.options!;
    final fetchUrl = _getFetchUrl(artifactType);
    final queryParamName = _getQueryParamName(artifactType);

    return _dio.get(
      fetchUrl,
      queryParameters: <String, dynamic>{
        'projectId': options.projectId,
        queryParamName: artifactName,
      },
    );
  }

  /// Fetches artifact data from network and optionally saves to cache.
  static Future<Response> _fetchArtifactFromNetwork({
    required PhlutsArtifactType artifactType,
    required String artifactName,
    required bool saveToCache,
  }) async {
    final response = await _makeArtifactRequest(
      artifactType: artifactType,
      artifactName: artifactName,
    );

    // Save to cache if enabled and response is valid
    if (saveToCache && response.data != null) {
      final version = response.data['version'] as int?;
      final phlutsJson = response.data['phlutsJson'] as String?;
      final name = response.data['name'] as String?;

      if (version != null && phlutsJson != null && name != null) {
        await PhlutsCacheService.saveArtifact(
          name: name,
          phlutsJson: phlutsJson,
          version: version,
          artifactType: artifactType,
        );
      }
    }

    return response;
  }

  /// Builds a Response from cached artifact data.
  static Response _buildArtifactCacheResponse(
    PhlutsArtifactType artifactType,
    PhlutsCache cachedArtifact,
  ) {
    final fetchUrl = _getFetchUrl(artifactType);
    return Response(
      requestOptions: RequestOptions(path: fetchUrl),
      data: {
        'name': cachedArtifact.name,
        'phlutsJson': cachedArtifact.phlutsJson,
        'version': cachedArtifact.version,
      },
    );
  }

  /// Fetches the latest version in background and updates cache if newer.
  ///
  /// This method runs asynchronously without blocking the UI.
  /// If a newer version is found, it updates the cache for the next load.
  /// Prevents duplicate fetches for the same artifact.
  static Future<void> _fetchAndUpdateArtifactInBackground({
    required PhlutsArtifactType artifactType,
    required String artifactName,
    required int cachedVersion,
  }) async {
    final inProgressSet = _backgroundFetchInProgress[artifactType]!;
    // Prevent duplicate background fetches for the same artifact
    if (!inProgressSet.add(artifactName)) return;

    try {
      final response = await _makeArtifactRequest(
        artifactType: artifactType,
        artifactName: artifactName,
      );

      if (response.data != null) {
        final serverVersion = response.data['version'] as int?;
        final serverPhlutsJson = response.data['phlutsJson'] as String?;
        final name = response.data['name'] as String?;

        // Only update if server has newer version
        if (serverVersion != null &&
            serverPhlutsJson != null &&
            name != null &&
            serverVersion > cachedVersion) {
          // Update cache with new version for next load
          await PhlutsCacheService.saveArtifact(
            name: name,
            phlutsJson: serverPhlutsJson,
            version: serverVersion,
            artifactType: artifactType,
          );
        }
      }
    } catch (e) {
      // Silently fail - background update is optional
      Log.d(
        'PhlutsCloud: Background update failed for ${artifactType.name} $artifactName: $e',
      );
    } finally {
      inProgressSet.remove(artifactName);
    }
  }

  /// Fetches a theme from Phluts Cloud with intelligent caching.
  ///
  /// Uses the global cache configuration from [PhlutsService.defaultCacheConfig],
  /// which is set via [Phluts.initialize].
  static Future<Response?> fetchTheme({required String themeName}) async {
    return _fetchArtifact(
      artifactType: PhlutsArtifactType.theme,
      artifactName: themeName,
    );
  }

  /// Clears the cache for a specific screen.
  static Future<bool> clearScreenCache(String routeName) {
    return PhlutsCacheService.removeArtifact(routeName, PhlutsArtifactType.screen);
  }

  /// Clears all cached screens.
  static Future<bool> clearAllCache() {
    return PhlutsCacheService.clearAllArtifacts(PhlutsArtifactType.screen);
  }

  /// Clears the cache for a specific theme.
  static Future<bool> clearThemeCache(String themeName) {
    return PhlutsCacheService.removeArtifact(themeName, PhlutsArtifactType.theme);
  }

  /// Clears all cached themes.
  static Future<bool> clearAllThemeCache() {
    return PhlutsCacheService.clearAllArtifacts(PhlutsArtifactType.theme);
  }
}
