// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_scrollbar_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsScrollbarThemeData _$PhlutsScrollbarThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsScrollbarThemeData(
  thumbVisibility: json['thumbVisibility'] as bool?,
  thickness: (json['thickness'] as num?)?.toDouble(),
  trackVisibility: json['trackVisibility'] as bool?,
  radius: (json['radius'] as num?)?.toDouble(),
  thumbColor: json['thumbColor'] as String?,
  trackColor: json['trackColor'] as String?,
  trackBorderColor: json['trackBorderColor'] as String?,
  crossAxisMargin: (json['crossAxisMargin'] as num?)?.toDouble(),
  mainAxisMargin: (json['mainAxisMargin'] as num?)?.toDouble(),
  minThumbLength: (json['minThumbLength'] as num?)?.toDouble(),
  interactive: json['interactive'] as bool?,
);

Map<String, dynamic> _$PhlutsScrollbarThemeDataToJson(
  PhlutsScrollbarThemeData instance,
) => <String, dynamic>{
  'thumbVisibility': instance.thumbVisibility,
  'thickness': instance.thickness,
  'trackVisibility': instance.trackVisibility,
  'radius': instance.radius,
  'thumbColor': instance.thumbColor,
  'trackColor': instance.trackColor,
  'trackBorderColor': instance.trackBorderColor,
  'crossAxisMargin': instance.crossAxisMargin,
  'mainAxisMargin': instance.mainAxisMargin,
  'minThumbLength': instance.minThumbLength,
  'interactive': instance.interactive,
};
