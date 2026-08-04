// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_colored_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsColoredBox _$PhlutsColoredBoxFromJson(Map<String, dynamic> json) =>
    PhlutsColoredBox(
      color: json['color'] as String,
      child: json['child'] == null
          ? null
          : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsColoredBoxToJson(PhlutsColoredBox instance) =>
    <String, dynamic>{
      'color': instance.color,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
