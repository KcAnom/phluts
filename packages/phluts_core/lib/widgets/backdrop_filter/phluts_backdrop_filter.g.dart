// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_backdrop_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsBackdropFilter _$PhlutsBackdropFilterFromJson(
  Map<String, dynamic> json,
) => PhlutsBackdropFilter(
  filter: PhlutsImageFilter.fromJson(json['filter'] as Map<String, dynamic>),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
  enabled: json['enabled'] as bool?,
  blendMode: $enumDecodeNullable(_$PhlutsBlendModeEnumMap, json['blendMode']),
);

Map<String, dynamic> _$PhlutsBackdropFilterToJson(
  PhlutsBackdropFilter instance,
) => <String, dynamic>{
  'filter': instance.filter.toJson(),
  'child': instance.child?.toJson(),
  'enabled': instance.enabled,
  'blendMode': _$PhlutsBlendModeEnumMap[instance.blendMode],
  'type': instance.type,
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
