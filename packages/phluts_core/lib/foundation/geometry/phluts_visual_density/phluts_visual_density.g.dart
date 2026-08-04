// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_visual_density.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsVisualDensity _$PhlutsVisualDensityFromJson(Map<String, dynamic> json) =>
    PhlutsVisualDensity(
      horizontal: const DoubleConverter().fromJson(json['horizontal']),
      vertical: const DoubleConverter().fromJson(json['vertical']),
    );

Map<String, dynamic> _$PhlutsVisualDensityToJson(PhlutsVisualDensity instance) =>
    <String, dynamic>{
      'horizontal': const DoubleConverter().toJson(instance.horizontal),
      'vertical': const DoubleConverter().toJson(instance.vertical),
    };
