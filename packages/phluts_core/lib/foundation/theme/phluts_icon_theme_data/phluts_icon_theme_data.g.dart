// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_icon_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsIconThemeData _$PhlutsIconThemeDataFromJson(Map<String, dynamic> json) =>
    PhlutsIconThemeData(
      size: (json['size'] as num?)?.toDouble(),
      fill: (json['fill'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      grade: (json['grade'] as num?)?.toDouble(),
      opticalSize: (json['opticalSize'] as num?)?.toDouble(),
      color: json['color'] as String?,
      opacity: (json['opacity'] as num?)?.toDouble(),
      shadows: (json['shadows'] as List<dynamic>?)
          ?.map((e) => PhlutsShadow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PhlutsIconThemeDataToJson(PhlutsIconThemeData instance) =>
    <String, dynamic>{
      'size': instance.size,
      'fill': instance.fill,
      'weight': instance.weight,
      'grade': instance.grade,
      'opticalSize': instance.opticalSize,
      'color': instance.color,
      'opacity': instance.opacity,
      'shadows': instance.shadows?.map((e) => e.toJson()).toList(),
    };
