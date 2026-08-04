// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_limited_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsLimitedBox _$PhlutsLimitedBoxFromJson(Map<String, dynamic> json) =>
    PhlutsLimitedBox(
      maxWidth: const DoubleConverter().fromJson(json['maxWidth']),
      maxHeight: const DoubleConverter().fromJson(json['maxHeight']),
      child: json['child'] == null
          ? null
          : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsLimitedBoxToJson(PhlutsLimitedBox instance) =>
    <String, dynamic>{
      'maxWidth': const DoubleConverter().toJson(instance.maxWidth),
      'maxHeight': const DoubleConverter().toJson(instance.maxHeight),
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
