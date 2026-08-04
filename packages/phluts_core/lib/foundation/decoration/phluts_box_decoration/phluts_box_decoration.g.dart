// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_box_decoration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsBoxDecoration _$PhlutsBoxDecorationFromJson(Map<String, dynamic> json) =>
    PhlutsBoxDecoration(
      color: json['color'] as String?,
      image: json['image'] == null
          ? null
          : PhlutsDecorationImage.fromJson(json['image'] as Map<String, dynamic>),
      border: json['border'] == null
          ? null
          : PhlutsBorder.fromJson(json['border'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? null
          : PhlutsBorderRadius.fromJson(json['borderRadius']),
      boxShadow: (json['boxShadow'] as List<dynamic>?)
          ?.map((e) => PhlutsBoxShadow.fromJson(e as Map<String, dynamic>))
          .toList(),
      gradient: json['gradient'] == null
          ? null
          : PhlutsGradient.fromJson(json['gradient'] as Map<String, dynamic>),
      backgroundBlendMode: $enumDecodeNullable(
        _$PhlutsBlendModeEnumMap,
        json['backgroundBlendMode'],
      ),
      shape: $enumDecodeNullable(_$PhlutsBoxShapeEnumMap, json['shape']),
    );

Map<String, dynamic> _$PhlutsBoxDecorationToJson(
  PhlutsBoxDecoration instance,
) => <String, dynamic>{
  'color': instance.color,
  'image': instance.image?.toJson(),
  'border': instance.border?.toJson(),
  'borderRadius': instance.borderRadius?.toJson(),
  'boxShadow': instance.boxShadow?.map((e) => e.toJson()).toList(),
  'gradient': instance.gradient?.toJson(),
  'backgroundBlendMode': _$PhlutsBlendModeEnumMap[instance.backgroundBlendMode],
  'shape': _$PhlutsBoxShapeEnumMap[instance.shape],
};

const _$PhlutsBlendModeEnumMap = {
  PhlutsBlendMode.clear: 'clear',
  PhlutsBlendMode.src: 'src',
  PhlutsBlendMode.dst: 'dst',
  PhlutsBlendMode.srcOver: 'srcOver',
  PhlutsBlendMode.dstOver: 'dstOver',
  PhlutsBlendMode.srcIn: 'srcIn',
  PhlutsBlendMode.dstIn: 'dstIn',
  PhlutsBlendMode.srcOut: 'srcOut',
  PhlutsBlendMode.dstOut: 'dstOut',
  PhlutsBlendMode.srcATop: 'srcATop',
  PhlutsBlendMode.dstATop: 'dstATop',
  PhlutsBlendMode.xor: 'xor',
  PhlutsBlendMode.plus: 'plus',
  PhlutsBlendMode.modulate: 'modulate',
  PhlutsBlendMode.screen: 'screen',
  PhlutsBlendMode.overlay: 'overlay',
  PhlutsBlendMode.darken: 'darken',
  PhlutsBlendMode.lighten: 'lighten',
  PhlutsBlendMode.colorDodge: 'colorDodge',
  PhlutsBlendMode.colorBurn: 'colorBurn',
  PhlutsBlendMode.hardLight: 'hardLight',
  PhlutsBlendMode.softLight: 'softLight',
  PhlutsBlendMode.difference: 'difference',
  PhlutsBlendMode.exclusion: 'exclusion',
  PhlutsBlendMode.multiply: 'multiply',
  PhlutsBlendMode.hue: 'hue',
  PhlutsBlendMode.saturation: 'saturation',
  PhlutsBlendMode.color: 'color',
  PhlutsBlendMode.luminosity: 'luminosity',
};

const _$PhlutsBoxShapeEnumMap = {
  PhlutsBoxShape.rectangle: 'rectangle',
  PhlutsBoxShape.circle: 'circle',
};
