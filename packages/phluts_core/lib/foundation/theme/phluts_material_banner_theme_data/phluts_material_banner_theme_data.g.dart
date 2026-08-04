// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_material_banner_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsMaterialBannerThemeData _$PhlutsMaterialBannerThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsMaterialBannerThemeData(
  backgroundColor: json['backgroundColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  shadowColor: json['shadowColor'] as String?,
  dividerColor: json['dividerColor'] as String?,
  contentTextStyle: json['contentTextStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['contentTextStyle']),
  elevation: (json['elevation'] as num?)?.toDouble(),
  padding: json['padding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['padding']),
  leadingPadding: json['leadingPadding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['leadingPadding']),
);

Map<String, dynamic> _$PhlutsMaterialBannerThemeDataToJson(
  PhlutsMaterialBannerThemeData instance,
) => <String, dynamic>{
  'backgroundColor': instance.backgroundColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'shadowColor': instance.shadowColor,
  'dividerColor': instance.dividerColor,
  'contentTextStyle': instance.contentTextStyle?.toJson(),
  'elevation': instance.elevation,
  'padding': instance.padding?.toJson(),
  'leadingPadding': instance.leadingPadding?.toJson(),
};
