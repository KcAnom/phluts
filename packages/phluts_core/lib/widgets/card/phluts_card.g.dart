// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsCard _$PhlutsCardFromJson(Map<String, dynamic> json) => PhlutsCard(
  color: json['color'] as String?,
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  elevation: const DoubleConverter().fromJson(json['elevation']),
  shape: json['shape'] == null
      ? null
      : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  borderOnForeground: json['borderOnForeground'] as bool?,
  margin: json['margin'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['margin']),
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
  semanticContainer: json['semanticContainer'] as bool?,
);

Map<String, dynamic> _$PhlutsCardToJson(PhlutsCard instance) =>
    <String, dynamic>{
      'color': instance.color,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'elevation': const DoubleConverter().toJson(instance.elevation),
      'shape': instance.shape?.toJson(),
      'borderOnForeground': instance.borderOnForeground,
      'margin': instance.margin?.toJson(),
      'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
      'child': instance.child?.toJson(),
      'semanticContainer': instance.semanticContainer,
      'type': instance.type,
    };

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
