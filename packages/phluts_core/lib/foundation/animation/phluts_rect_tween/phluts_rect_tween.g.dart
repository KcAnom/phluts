// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_rect_tween.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsRectTween _$PhlutsRectTweenFromJson(Map<String, dynamic> json) =>
    PhlutsRectTween(
      type: json['type'] as String,
      begin: json['begin'] == null
          ? null
          : PhlutsRect.fromJson(json['begin'] as Map<String, dynamic>),
      end: json['end'] == null
          ? null
          : PhlutsRect.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsRectTweenToJson(PhlutsRectTween instance) =>
    <String, dynamic>{
      'type': instance.type,
      'begin': instance.begin?.toJson(),
      'end': instance.end?.toJson(),
    };
