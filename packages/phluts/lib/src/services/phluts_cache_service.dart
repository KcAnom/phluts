import 'package:shared_preferences/shared_preferences.dart';
import 'package:phluts/src/models/phluts_cache.dart';
import 'package:phluts/src/models/phluts_artifact_type.dart';
import 'package:phluts_logger/phluts_logger.dart';

/// Service for managing cached Phluts artifacts (screens, themes, etc.).
///
/// This service uses SharedPreferences to persist artifact data locally,
/// enabling offline access and reducing unnecessary network requests.
class PhlutsCacheService {
  PhlutsCacheService._();

  /// Cached SharedPreferences instance for better performance.
  static SharedPreferences? _prefs;

  /// Gets the SharedPreferences instance, caching it for subsequent calls.
  static Future<SharedPreferences> get _sharedPrefs async {
    return _prefs ??= await SharedPreferences.getInstance();
  }

  /// Gets the cache prefix for a given artifact type.
  static String _getCachePrefix(PhlutsArtifactType artifactType) {
    switch (artifactType) {
      case PhlutsArtifactType.screen:
        return 'phluts_screen_cache_';
      case PhlutsArtifactType.theme:
        return 'phluts_theme_cache_';
    }
  }

  /// Gets a cached artifact by its name and type.
  ///
  /// Returns `null` if the artifact is not cached.
  static Future<PhlutsCache?> getCachedArtifact(
    String artifactName,
    PhlutsArtifactType artifactType,
  ) async {
    try {
      final prefs = await _sharedPrefs;
      final cachePrefix = _getCachePrefix(artifactType);
      final cacheKey = '$cachePrefix$artifactName';
      final cachedData = prefs.getString(cacheKey);

      if (cachedData == null) {
        return null;
      }

      return PhlutsCache.fromJsonString(cachedData);
    } catch (e) {
      Log.w(
        'Failed to get cached artifact $artifactName (${artifactType.name}): $e',
      );
      return null;
    }
  }

  /// Saves an artifact to the cache.
  ///
  /// If an artifact with the same name already exists, it will be overwritten.
  static Future<bool> saveArtifact({
    required String name,
    required String phlutsJson,
    required int version,
    required PhlutsArtifactType artifactType,
  }) async {
    try {
      final prefs = await _sharedPrefs;
      final cachePrefix = _getCachePrefix(artifactType);
      final cacheKey = '$cachePrefix$name';

      final artifactCache = PhlutsCache(
        name: name,
        phlutsJson: phlutsJson,
        version: version,
        cachedAt: DateTime.now(),
      );

      return prefs.setString(cacheKey, artifactCache.toJsonString());
    } catch (e) {
      return false;
    }
  }

  /// Removes a specific artifact from the cache.
  static Future<bool> removeArtifact(
    String artifactName,
    PhlutsArtifactType artifactType,
  ) async {
    try {
      final prefs = await _sharedPrefs;
      final cachePrefix = _getCachePrefix(artifactType);
      final cacheKey = '$cachePrefix$artifactName';
      return prefs.remove(cacheKey);
    } catch (e) {
      return false;
    }
  }

  /// Clears all cached artifacts of a specific type.
  static Future<bool> clearAllArtifacts(PhlutsArtifactType artifactType) async {
    try {
      final prefs = await _sharedPrefs;
      final keys = prefs.getKeys();
      final cachePrefix = _getCachePrefix(artifactType);
      final cacheKeys = keys.where((key) => key.startsWith(cachePrefix));

      await Future.wait(cacheKeys.map(prefs.remove));

      return true;
    } catch (e) {
      return false;
    }
  }

  /// Checks if a cached artifact is still valid based on its age.
  ///
  /// Returns `true` if the cache is valid (not expired).
  /// Returns `false` if the cache is expired or doesn't exist.
  ///
  /// If [maxAge] is `null`, cache is considered valid (no time-based expiration).
  static bool isCacheValid(PhlutsCache? cachedArtifact, Duration? maxAge) {
    if (cachedArtifact == null) return false;
    if (maxAge == null) return true;

    final age = DateTime.now().difference(cachedArtifact.cachedAt);
    return age <= maxAge;
  }
}
