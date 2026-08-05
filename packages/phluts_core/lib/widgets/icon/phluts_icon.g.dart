// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsIcon _$PhlutsIconFromJson(Map<String, dynamic> json) => PhlutsIcon(
  icon: json['icon'] as String,
  iconType:
      $enumDecodeNullable(_$PhlutsIconTypeEnumMap, json['iconType']) ??
      PhlutsIconType.material,
  size: const DoubleConverter().fromJson(json['size']),
  fill: const DoubleConverter().fromJson(json['fill']),
  weight: const DoubleConverter().fromJson(json['weight']),
  grade: const DoubleConverter().fromJson(json['grade']),
  opticalSize: const DoubleConverter().fromJson(json['opticalSize']),
  color: json['color'] as String?,
  shadows: (json['shadows'] as List<dynamic>?)
      ?.map((e) => PhlutsShadow.fromJson(e as Map<String, dynamic>))
      .toList(),
  semanticLabel: json['semanticLabel'] as String?,
  textDirection: $enumDecodeNullable(
    _$PhlutsTextDirectionEnumMap,
    json['textDirection'],
  ),
  applyTextScaling: json['applyTextScaling'] as bool?,
  blendMode: $enumDecodeNullable(_$PhlutsBlendModeEnumMap, json['blendMode']),
);

Map<String, dynamic> _$PhlutsIconToJson(PhlutsIcon instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'iconType': _$PhlutsIconTypeEnumMap[instance.iconType]!,
      'size': const DoubleConverter().toJson(instance.size),
      'fill': const DoubleConverter().toJson(instance.fill),
      'weight': const DoubleConverter().toJson(instance.weight),
      'grade': const DoubleConverter().toJson(instance.grade),
      'opticalSize': const DoubleConverter().toJson(instance.opticalSize),
      'color': instance.color,
      'shadows': instance.shadows?.map((e) => e.toJson()).toList(),
      'semanticLabel': instance.semanticLabel,
      'textDirection': _$PhlutsTextDirectionEnumMap[instance.textDirection],
      'applyTextScaling': instance.applyTextScaling,
      'blendMode': _$PhlutsBlendModeEnumMap[instance.blendMode],
      'type': instance.type,
    };

const _$PhlutsIconTypeEnumMap = {
  PhlutsIconType.material: 'material',
  PhlutsIconType.cupertino: 'cupertino',
};

const _$PhlutsTextDirectionEnumMap = {
  PhlutsTextDirection.rtl: 'rtl',
  PhlutsTextDirection.ltr: 'ltr',
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
