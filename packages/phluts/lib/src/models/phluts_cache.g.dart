// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_cache.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsCache _$PhlutsCacheFromJson(Map<String, dynamic> json) => PhlutsCache(
  name: json['name'] as String,
  phlutsJson: json['phlutsJson'] as String,
  version: (json['version'] as num).toInt(),
  cachedAt: DateTime.parse(json['cachedAt'] as String),
);

Map<String, dynamic> _$PhlutsCacheToJson(PhlutsCache instance) => <String, dynamic>{
  'name': instance.name,
  'phlutsJson': instance.phlutsJson,
  'version': instance.version,
  'cachedAt': instance.cachedAt.toIso8601String(),
};
