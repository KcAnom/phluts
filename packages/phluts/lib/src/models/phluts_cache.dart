import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'phluts_cache.g.dart';

/// Model representing a cached screen from Phluts Cloud.
///
/// This model stores the screen data along with metadata for caching purposes.
@JsonSerializable()
class PhlutsCache {
  /// Creates a [PhlutsCache] instance.
  const PhlutsCache({
    required this.name,
    required this.phlutsJson,
    required this.version,
    required this.cachedAt,
  });

  /// The screen name/route identifier.
  final String name;

  /// The JSON string containing the Phluts widget definition.
  final String phlutsJson;

  /// The version number of the screen.
  final int version;

  /// The timestamp when this screen was cached.
  final DateTime cachedAt;

  /// Creates a [PhlutsCache] from a JSON map.
  factory PhlutsCache.fromJson(Map<String, dynamic> json) =>
      _$PhlutsCacheFromJson(json);

  /// Converts this [PhlutsCache] to a JSON map.
  Map<String, dynamic> toJson() => _$PhlutsCacheToJson(this);

  /// Creates a [PhlutsCache] from a JSON string.
  factory PhlutsCache.fromJsonString(String jsonString) {
    return PhlutsCache.fromJson(jsonDecode(jsonString) as Map<String, dynamic>);
  }

  /// Converts this [PhlutsCache] to a JSON string.
  String toJsonString() {
    return jsonEncode(toJson());
  }

  /// Creates a copy of this [PhlutsCache] with the given fields replaced.
  PhlutsCache copyWith({
    String? name,
    String? phlutsJson,
    int? version,
    DateTime? cachedAt,
  }) {
    return PhlutsCache(
      name: name ?? this.name,
      phlutsJson: phlutsJson ?? this.phlutsJson,
      version: version ?? this.version,
      cachedAt: cachedAt ?? this.cachedAt,
    );
  }

  @override
  String toString() {
    return 'PhlutsCache(name: $name, version: $version, cachedAt: $cachedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PhlutsCache &&
        other.name == name &&
        other.phlutsJson == phlutsJson &&
        other.version == version &&
        other.cachedAt == cachedAt;
  }

  @override
  int get hashCode {
    return Object.hash(name, phlutsJson, version, cachedAt);
  }
}
