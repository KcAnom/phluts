// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsImage _$PhlutsImageFromJson(Map<String, dynamic> json) => PhlutsImage(
  src: json['src'] as String,
  alignment: $enumDecodeNullable(_$PhlutsAlignmentEnumMap, json['alignment']),
  imageType: $enumDecodeNullable(_$PhlutsImageTypeEnumMap, json['imageType']),
  color: json['color'] as String?,
  width: const DoubleConverter().fromJson(json['width']),
  height: const DoubleConverter().fromJson(json['height']),
  fit: $enumDecodeNullable(_$PhlutsBoxFitEnumMap, json['fit']),
  repeat: $enumDecodeNullable(_$PhlutsImageRepeatEnumMap, json['repeat']),
  filterQuality: $enumDecodeNullable(
    _$PhlutsFilterQualityEnumMap,
    json['filterQuality'],
  ),
  semanticLabel: json['semanticLabel'] as String?,
  excludeFromSemantics: json['excludeFromSemantics'] as bool?,
);

Map<String, dynamic> _$PhlutsImageToJson(PhlutsImage instance) =>
    <String, dynamic>{
      'src': instance.src,
      'alignment': _$PhlutsAlignmentEnumMap[instance.alignment],
      'imageType': _$PhlutsImageTypeEnumMap[instance.imageType],
      'color': instance.color,
      'width': const DoubleConverter().toJson(instance.width),
      'height': const DoubleConverter().toJson(instance.height),
      'fit': _$PhlutsBoxFitEnumMap[instance.fit],
      'repeat': _$PhlutsImageRepeatEnumMap[instance.repeat],
      'filterQuality': _$PhlutsFilterQualityEnumMap[instance.filterQuality],
      'semanticLabel': instance.semanticLabel,
      'excludeFromSemantics': instance.excludeFromSemantics,
      'type': instance.type,
    };

const _$PhlutsAlignmentEnumMap = {
  PhlutsAlignment.topLeft: 'topLeft',
  PhlutsAlignment.topCenter: 'topCenter',
  PhlutsAlignment.topRight: 'topRight',
  PhlutsAlignment.centerLeft: 'centerLeft',
  PhlutsAlignment.center: 'center',
  PhlutsAlignment.centerRight: 'centerRight',
  PhlutsAlignment.bottomLeft: 'bottomLeft',
  PhlutsAlignment.bottomCenter: 'bottomCenter',
  PhlutsAlignment.bottomRight: 'bottomRight',
};

const _$PhlutsImageTypeEnumMap = {
  PhlutsImageType.file: 'file',
  PhlutsImageType.network: 'network',
  PhlutsImageType.asset: 'asset',
};

const _$PhlutsBoxFitEnumMap = {
  PhlutsBoxFit.fill: 'fill',
  PhlutsBoxFit.contain: 'contain',
  PhlutsBoxFit.cover: 'cover',
  PhlutsBoxFit.fitWidth: 'fitWidth',
  PhlutsBoxFit.fitHeight: 'fitHeight',
  PhlutsBoxFit.none: 'none',
  PhlutsBoxFit.scaleDown: 'scaleDown',
};

const _$PhlutsImageRepeatEnumMap = {
  PhlutsImageRepeat.repeat: 'repeat',
  PhlutsImageRepeat.repeatX: 'repeatX',
  PhlutsImageRepeat.repeatY: 'repeatY',
  PhlutsImageRepeat.noRepeat: 'noRepeat',
};

const _$PhlutsFilterQualityEnumMap = {
  PhlutsFilterQuality.none: 'none',
  PhlutsFilterQuality.low: 'low',
  PhlutsFilterQuality.medium: 'medium',
  PhlutsFilterQuality.high: 'high',
};
