// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_bottom_app_bar_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsBottomAppBarThemeData _$PhlutsBottomAppBarThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsBottomAppBarThemeData(
  color: json['color'] as String?,
  elevation: (json['elevation'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  surfaceTintColor: json['surfaceTintColor'] as String?,
  shadowColor: json['shadowColor'] as String?,
  padding: json['padding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['padding']),
);

Map<String, dynamic> _$PhlutsBottomAppBarThemeDataToJson(
  PhlutsBottomAppBarThemeData instance,
) => <String, dynamic>{
  'color': instance.color,
  'elevation': instance.elevation,
  'height': instance.height,
  'surfaceTintColor': instance.surfaceTintColor,
  'shadowColor': instance.shadowColor,
  'padding': instance.padding?.toJson(),
};
