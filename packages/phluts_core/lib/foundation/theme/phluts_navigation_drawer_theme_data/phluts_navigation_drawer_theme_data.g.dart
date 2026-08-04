// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_navigation_drawer_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsNavigationDrawerThemeData _$PhlutsNavigationDrawerThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsNavigationDrawerThemeData(
  tileHeight: (json['tileHeight'] as num?)?.toDouble(),
  backgroundColor: json['backgroundColor'] as String?,
  elevation: (json['elevation'] as num?)?.toDouble(),
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  indicatorColor: json['indicatorColor'] as String?,
  indicatorShape: json['indicatorShape'] == null
      ? null
      : PhlutsShapeBorder.fromJson(
          json['indicatorShape'] as Map<String, dynamic>,
        ),
  indicatorSize: json['indicatorSize'] == null
      ? null
      : PhlutsSize.fromJson(json['indicatorSize'] as Map<String, dynamic>),
  labelTextStyle: json['labelTextStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['labelTextStyle']),
  iconTheme: json['iconTheme'] == null
      ? null
      : PhlutsIconThemeData.fromJson(json['iconTheme'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsNavigationDrawerThemeDataToJson(
  PhlutsNavigationDrawerThemeData instance,
) => <String, dynamic>{
  'tileHeight': instance.tileHeight,
  'backgroundColor': instance.backgroundColor,
  'elevation': instance.elevation,
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'indicatorColor': instance.indicatorColor,
  'indicatorShape': instance.indicatorShape?.toJson(),
  'indicatorSize': instance.indicatorSize?.toJson(),
  'labelTextStyle': instance.labelTextStyle?.toJson(),
  'iconTheme': instance.iconTheme?.toJson(),
};
