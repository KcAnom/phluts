// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_border_side.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsBorderSide _$PhlutsBorderSideFromJson(Map<String, dynamic> json) =>
    PhlutsBorderSide(
      color: json['color'] as String?,
      width: (json['width'] as num?)?.toDouble(),
      strokeAlign: (json['strokeAlign'] as num?)?.toDouble(),
      borderStyle: $enumDecodeNullable(
        _$PhlutsBorderStyleEnumMap,
        json['borderStyle'],
      ),
    );

Map<String, dynamic> _$PhlutsBorderSideToJson(PhlutsBorderSide instance) =>
    <String, dynamic>{
      'color': instance.color,
      'width': instance.width,
      'strokeAlign': instance.strokeAlign,
      'borderStyle': _$PhlutsBorderStyleEnumMap[instance.borderStyle],
    };

const _$PhlutsBorderStyleEnumMap = {
  PhlutsBorderStyle.none: 'none',
  PhlutsBorderStyle.solid: 'solid',
};
