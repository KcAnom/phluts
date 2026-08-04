// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_border_radius.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsBorderRadius _$PhlutsBorderRadiusFromJson(Map<String, dynamic> json) =>
    PhlutsBorderRadius(
      topLeft: (json['topLeft'] as num?)?.toDouble(),
      topRight: (json['topRight'] as num?)?.toDouble(),
      bottomLeft: (json['bottomLeft'] as num?)?.toDouble(),
      bottomRight: (json['bottomRight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PhlutsBorderRadiusToJson(PhlutsBorderRadius instance) =>
    <String, dynamic>{
      'topLeft': instance.topLeft,
      'topRight': instance.topRight,
      'bottomLeft': instance.bottomLeft,
      'bottomRight': instance.bottomRight,
    };
