// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_input_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsInputBorder _$PhlutsInputBorderFromJson(Map<String, dynamic> json) =>
    PhlutsInputBorder(
      type:
          $enumDecodeNullable(_$PhlutsInputBorderTypeEnumMap, json['type']) ??
          PhlutsInputBorderType.underlineInputBorder,
      borderRadius: json['borderRadius'] == null
          ? null
          : PhlutsBorderRadius.fromJson(json['borderRadius']),
      gapPadding: const DoubleConverter().fromJson(json['gapPadding']),
      width: const DoubleConverter().fromJson(json['width']),
      color: json['color'] as String?,
      gradient: json['gradient'] == null
          ? null
          : PhlutsGradient.fromJson(json['gradient'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsInputBorderToJson(PhlutsInputBorder instance) =>
    <String, dynamic>{
      'type': _$PhlutsInputBorderTypeEnumMap[instance.type]!,
      'borderRadius': instance.borderRadius?.toJson(),
      'gapPadding': const DoubleConverter().toJson(instance.gapPadding),
      'width': const DoubleConverter().toJson(instance.width),
      'color': instance.color,
      'gradient': instance.gradient?.toJson(),
    };

const _$PhlutsInputBorderTypeEnumMap = {
  PhlutsInputBorderType.none: 'none',
  PhlutsInputBorderType.underlineInputBorder: 'underlineInputBorder',
  PhlutsInputBorderType.outlineInputBorder: 'outlineInputBorder',
};
