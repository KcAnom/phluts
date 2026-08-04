// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsBorder _$PhlutsBorderFromJson(Map<String, dynamic> json) => PhlutsBorder(
  color: json['color'] as String?,
  borderStyle: $enumDecodeNullable(
    _$PhlutsBorderStyleEnumMap,
    json['borderStyle'],
  ),
  width: (json['width'] as num?)?.toDouble(),
  strokeAlign: (json['strokeAlign'] as num?)?.toDouble(),
  top: json['top'] == null
      ? null
      : PhlutsBorderSide.fromJson(json['top'] as Map<String, dynamic>),
  right: json['right'] == null
      ? null
      : PhlutsBorderSide.fromJson(json['right'] as Map<String, dynamic>),
  bottom: json['bottom'] == null
      ? null
      : PhlutsBorderSide.fromJson(json['bottom'] as Map<String, dynamic>),
  left: json['left'] == null
      ? null
      : PhlutsBorderSide.fromJson(json['left'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsBorderToJson(PhlutsBorder instance) =>
    <String, dynamic>{
      'color': instance.color,
      'borderStyle': _$PhlutsBorderStyleEnumMap[instance.borderStyle],
      'width': instance.width,
      'strokeAlign': instance.strokeAlign,
      'top': instance.top?.toJson(),
      'right': instance.right?.toJson(),
      'bottom': instance.bottom?.toJson(),
      'left': instance.left?.toJson(),
    };

const _$PhlutsBorderStyleEnumMap = {
  PhlutsBorderStyle.none: 'none',
  PhlutsBorderStyle.solid: 'solid',
};
