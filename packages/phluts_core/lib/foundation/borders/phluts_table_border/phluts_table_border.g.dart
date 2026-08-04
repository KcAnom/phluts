// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_table_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsTableBorder _$PhlutsTableBorderFromJson(Map<String, dynamic> json) =>
    PhlutsTableBorder(
      color: json['color'] as String?,
      width: const DoubleConverter().fromJson(json['width']),
      style: $enumDecodeNullable(_$PhlutsBorderStyleEnumMap, json['style']),
      borderRadius: json['borderRadius'] == null
          ? null
          : PhlutsBorderRadius.fromJson(json['borderRadius']),
    );

Map<String, dynamic> _$PhlutsTableBorderToJson(PhlutsTableBorder instance) =>
    <String, dynamic>{
      'color': instance.color,
      'width': const DoubleConverter().toJson(instance.width),
      'style': _$PhlutsBorderStyleEnumMap[instance.style],
      'borderRadius': instance.borderRadius?.toJson(),
    };

const _$PhlutsBorderStyleEnumMap = {
  PhlutsBorderStyle.none: 'none',
  PhlutsBorderStyle.solid: 'solid',
};
