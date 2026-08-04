import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:phluts/src/services/phluts_cloud.dart';
import 'package:phluts/src/services/phluts_network_service.dart';
import 'package:phluts_core/actions/network_request/phluts_network_request.dart';
import 'package:phluts_core/foundation/theme/phluts_theme/phluts_theme.dart';
import 'package:phluts_logger/phluts_logger.dart';

/// Provides helpers to load [PhlutsTheme] definitions for [PhlutsApp].
///
/// Can be used as a wrapper to fetch themes from different sources:
/// ```dart
/// // From DSL (PhlutsTheme object)
/// PhlutsAppTheme.dsl(theme: myTheme)
///
/// // From cloud
/// PhlutsAppTheme(name: "xyz")
///
/// // From network
/// PhlutsAppTheme.network(context: context, request: request)
///
/// // From JSON
/// PhlutsAppTheme.json(payload: jsonData)
/// ```
class PhlutsAppTheme {
  /// Creates a [PhlutsAppTheme] wrapper for using a DSL theme.
  ///
  /// The [theme] should be a `PhlutsTheme` object defined with `@PhlutsThemeRef` annotation.
  const PhlutsAppTheme.dsl({required PhlutsTheme theme})
    : _source = _ThemeSource.dsl,
      name = null,
      _context = null,
      _request = null,
      _jsonPayload = null,
      _dslTheme = theme;

  /// Creates a [PhlutsAppTheme] wrapper for fetching a theme from the cloud by [name].
  const PhlutsAppTheme({required this.name})
    : _source = _ThemeSource.cloud,
      _context = null,
      _request = null,
      _jsonPayload = null,
      _dslTheme = null;

  /// Creates a [PhlutsAppTheme] wrapper for fetching a theme from network.
  const PhlutsAppTheme.network({
    required BuildContext context,
    required PhlutsNetworkRequest request,
  }) : _source = _ThemeSource.network,
       name = null,
       _context = context,
       _request = request,
       _jsonPayload = null,
       _dslTheme = null;

  /// Creates a [PhlutsAppTheme] wrapper for creating a theme from JSON.
  const PhlutsAppTheme.json({required dynamic payload})
    : _source = _ThemeSource.json,
      name = null,
      _context = null,
      _request = null,
      _jsonPayload = payload,
      _dslTheme = null;

  /// The name of the theme to fetch from cloud (only used for cloud source).
  final String? name;

  final _ThemeSource _source;
  final BuildContext? _context;
  final PhlutsNetworkRequest? _request;
  final Object? _jsonPayload;
  final PhlutsTheme? _dslTheme;

  /// Resolves the theme based on the configured source.
  ///
  /// Returns `null` if the fetch/parse fails or the payload is malformed.
  Future<PhlutsTheme?> resolve() async {
    switch (_source) {
      case _ThemeSource.dsl:
        return _dslTheme;
      case _ThemeSource.cloud:
        return fromCloud(themeName: name!);
      case _ThemeSource.network:
        return fromNetwork(context: _context!, request: _request!);
      case _ThemeSource.json:
        return fromJson(_jsonPayload);
    }
  }

  /// Fetches a theme from the `/themes` endpoint by [themeName].
  ///
  /// Returns `null` if the network call fails or the payload is malformed.
  static Future<PhlutsTheme?> fromCloud({required String themeName}) async {
    final response = await PhlutsCloud.fetchTheme(themeName: themeName);
    if (response == null) {
      return null;
    }

    final rawData = response.data;
    if (rawData is! Map<String, dynamic>) {
      return null;
    }

    final themePayload = _themeJsonDynamicToMap(rawData['phlutsJson']);
    if (themePayload == null) {
      return null;
    }

    return PhlutsTheme.fromJson(themePayload);
  }

  /// Fetches a theme over HTTP using a [PhlutsNetworkRequest].
  ///
  /// Mirrors [Phluts.fromNetwork], allowing callers to reuse existing request
  /// builders and middleware.
  static Future<PhlutsTheme?> fromNetwork({
    required BuildContext context,
    required PhlutsNetworkRequest request,
  }) async {
    final response = await PhlutsNetworkService.request(context, request);
    if (response == null) {
      return null;
    }

    return fromJson(response.data);
  }

  /// Creates a [PhlutsTheme] from raw JSON payloads.
  ///
  /// Accepts either a `Map<String, dynamic>` or a JSON `String`. Returns `null`
  /// when the payload cannot be parsed into a valid [PhlutsTheme].
  static PhlutsTheme? fromJson(dynamic payload) {
    final themePayload = _themeJsonDynamicToMap(payload);
    if (themePayload == null) {
      return null;
    }
    return PhlutsTheme.fromJson(themePayload);
  }

  static Map<String, dynamic>? _themeJsonDynamicToMap(dynamic payload) {
    if (payload == null) {
      return null;
    }
    if (payload is Map<String, dynamic> && payload['phlutsJson'] != null) {
      return _themeJsonDynamicToMap(payload['phlutsJson']);
    }
    if (payload is Map<String, dynamic>) {
      return payload;
    }
    if (payload is String) {
      try {
        final decoded = jsonDecode(payload);
        if (decoded is Map<String, dynamic>) {
          return decoded;
        }
      } catch (e) {
        Log.w('Unexpected error parsing theme JSON: $e');
        return null;
      }
    }
    return null;
  }
}

enum _ThemeSource { dsl, cloud, network, json }
