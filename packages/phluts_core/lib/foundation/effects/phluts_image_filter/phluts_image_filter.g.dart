// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_image_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsImageFilter _$PhlutsImageFilterFromJson(Map<String, dynamic> json) =>
    PhlutsImageFilter(
      type: $enumDecode(_$PhlutsImageFilterTypeEnumMap, json['type']),
      sigmaX: const DoubleConverter().fromJson(json['sigmaX']),
      sigmaY: const DoubleConverter().fromJson(json['sigmaY']),
      radiusX: const DoubleConverter().fromJson(json['radiusX']),
      radiusY: const DoubleConverter().fromJson(json['radiusY']),
      matrix: (json['matrix'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      inner: json['inner'] == null
          ? null
          : PhlutsImageFilter.fromJson(json['inner'] as Map<String, dynamic>),
      outer: json['outer'] == null
          ? null
          : PhlutsImageFilter.fromJson(json['outer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsImageFilterToJson(PhlutsImageFilter instance) =>
    <String, dynamic>{
      'type': _$PhlutsImageFilterTypeEnumMap[instance.type]!,
      'sigmaX': const DoubleConverter().toJson(instance.sigmaX),
      'sigmaY': const DoubleConverter().toJson(instance.sigmaY),
      'radiusX': const DoubleConverter().toJson(instance.radiusX),
      'radiusY': const DoubleConverter().toJson(instance.radiusY),
      'matrix': instance.matrix,
      'inner': instance.inner?.toJson(),
      'outer': instance.outer?.toJson(),
    };

const _$PhlutsImageFilterTypeEnumMap = {
  PhlutsImageFilterType.blur: 'blur',
  PhlutsImageFilterType.matrix: 'matrix',
  PhlutsImageFilterType.dilate: 'dilate',
  PhlutsImageFilterType.erode: 'erode',
  PhlutsImageFilterType.compose: 'compose',
};
