// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_aspect_ratio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsAspectRatio _$PhlutsAspectRatioFromJson(Map<String, dynamic> json) =>
    PhlutsAspectRatio(
      aspectRatio: (json['aspectRatio'] as num).toDouble(),
      child: json['child'] == null
          ? null
          : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsAspectRatioToJson(PhlutsAspectRatio instance) =>
    <String, dynamic>{
      'aspectRatio': instance.aspectRatio,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
