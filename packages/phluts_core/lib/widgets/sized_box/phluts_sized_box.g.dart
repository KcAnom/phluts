// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_sized_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSizedBox _$PhlutsSizedBoxFromJson(Map<String, dynamic> json) => PhlutsSizedBox(
  width: const DoubleConverter().fromJson(json['width']),
  height: const DoubleConverter().fromJson(json['height']),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsSizedBoxToJson(PhlutsSizedBox instance) =>
    <String, dynamic>{
      'width': const DoubleConverter().toJson(instance.width),
      'height': const DoubleConverter().toJson(instance.height),
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
