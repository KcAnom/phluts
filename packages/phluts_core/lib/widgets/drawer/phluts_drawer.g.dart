// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_drawer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDrawer _$PhlutsDrawerFromJson(Map<String, dynamic> json) => PhlutsDrawer(
  backgroundColor: json['backgroundColor'] as String?,
  elevation: const DoubleConverter().fromJson(json['elevation']),
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  shape: json['shape'] == null
      ? null
      : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  width: const DoubleConverter().fromJson(json['width']),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
  semanticLabel: json['semanticLabel'] as String?,
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
);

Map<String, dynamic> _$PhlutsDrawerToJson(PhlutsDrawer instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'elevation': const DoubleConverter().toJson(instance.elevation),
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'shape': instance.shape?.toJson(),
      'width': const DoubleConverter().toJson(instance.width),
      'child': instance.child?.toJson(),
      'semanticLabel': instance.semanticLabel,
      'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
      'type': instance.type,
    };

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
