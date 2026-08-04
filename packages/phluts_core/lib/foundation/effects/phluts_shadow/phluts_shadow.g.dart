// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_shadow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsShadow _$PhlutsShadowFromJson(Map<String, dynamic> json) => PhlutsShadow(
  color: json['color'] as String?,
  offset: json['offset'] == null
      ? null
      : PhlutsOffset.fromJson(json['offset'] as Map<String, dynamic>),
  blurRadius: const DoubleConverter().fromJson(json['blurRadius']),
);

Map<String, dynamic> _$PhlutsShadowToJson(PhlutsShadow instance) =>
    <String, dynamic>{
      'color': instance.color,
      'offset': instance.offset?.toJson(),
      'blurRadius': const DoubleConverter().toJson(instance.blurRadius),
    };
