// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_drawer_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDrawerThemeData _$PhlutsDrawerThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsDrawerThemeData(
  backgroundColor: json['backgroundColor'] as String?,
  scrimColor: json['scrimColor'] as String?,
  elevation: (json['elevation'] as num?)?.toDouble(),
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  shape: json['shape'] == null
      ? null
      : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  endShape: json['endShape'] == null
      ? null
      : PhlutsShapeBorder.fromJson(json['endShape'] as Map<String, dynamic>),
  width: (json['width'] as num?)?.toDouble(),
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
);

Map<String, dynamic> _$PhlutsDrawerThemeDataToJson(
  PhlutsDrawerThemeData instance,
) => <String, dynamic>{
  'backgroundColor': instance.backgroundColor,
  'scrimColor': instance.scrimColor,
  'elevation': instance.elevation,
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'shape': instance.shape?.toJson(),
  'endShape': instance.endShape?.toJson(),
  'width': instance.width,
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
};

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
