// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_card_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsCardThemeData _$PhlutsCardThemeDataFromJson(Map<String, dynamic> json) =>
    PhlutsCardThemeData(
      clipBehavior: $enumDecodeNullable(
        _$PhlutsClipEnumMap,
        json['clipBehavior'],
      ),
      color: json['color'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      margin: json['margin'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['margin']),
      shape: json['shape'] == null
          ? null
          : PhlutsBorder.fromJson(json['shape'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsCardThemeDataToJson(PhlutsCardThemeData instance) =>
    <String, dynamic>{
      'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
      'color': instance.color,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'elevation': instance.elevation,
      'margin': instance.margin?.toJson(),
      'shape': instance.shape?.toJson(),
    };

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
