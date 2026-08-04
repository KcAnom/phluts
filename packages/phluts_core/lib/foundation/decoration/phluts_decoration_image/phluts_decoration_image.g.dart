// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_decoration_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDecorationImage _$PhlutsDecorationImageFromJson(Map<String, dynamic> json) =>
    PhlutsDecorationImage(
      src: json['src'] as String,
      fit: $enumDecodeNullable(_$PhlutsBoxFitEnumMap, json['fit']),
      imageType: $enumDecodeNullable(_$PhlutsImageTypeEnumMap, json['imageType']),
      alignment: $enumDecodeNullable(_$PhlutsAlignmentEnumMap, json['alignment']),
      centerSlice: json['centerSlice'] == null
          ? null
          : PhlutsRect.fromJson(json['centerSlice'] as Map<String, dynamic>),
      repeat: $enumDecodeNullable(_$PhlutsImageRepeatEnumMap, json['repeat']),
      matchTextDirection: json['matchTextDirection'] as bool?,
      scale: (json['scale'] as num?)?.toDouble(),
      opacity: (json['opacity'] as num?)?.toDouble(),
      filterQuality: $enumDecodeNullable(
        _$PhlutsFilterQualityEnumMap,
        json['filterQuality'],
      ),
      invertColors: json['invertColors'] as bool?,
      isAntiAlias: json['isAntiAlias'] as bool?,
    );

Map<String, dynamic> _$PhlutsDecorationImageToJson(
  PhlutsDecorationImage instance,
) => <String, dynamic>{
  'src': instance.src,
  'fit': _$PhlutsBoxFitEnumMap[instance.fit],
  'imageType': _$PhlutsImageTypeEnumMap[instance.imageType],
  'alignment': _$PhlutsAlignmentEnumMap[instance.alignment],
  'centerSlice': instance.centerSlice?.toJson(),
  'repeat': _$PhlutsImageRepeatEnumMap[instance.repeat],
  'matchTextDirection': instance.matchTextDirection,
  'scale': instance.scale,
  'opacity': instance.opacity,
  'filterQuality': _$PhlutsFilterQualityEnumMap[instance.filterQuality],
  'invertColors': instance.invertColors,
  'isAntiAlias': instance.isAntiAlias,
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

const _$PhlutsImageTypeEnumMap = {
  PhlutsImageType.file: 'file',
  PhlutsImageType.network: 'network',
  PhlutsImageType.asset: 'asset',
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
