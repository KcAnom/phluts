// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_center.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsCenter _$PhlutsCenterFromJson(Map<String, dynamic> json) => PhlutsCenter(
  widthFactor: const DoubleConverter().fromJson(json['widthFactor']),
  heightFactor: const DoubleConverter().fromJson(json['heightFactor']),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsCenterToJson(PhlutsCenter instance) =>
    <String, dynamic>{
      'widthFactor': const DoubleConverter().toJson(instance.widthFactor),
      'heightFactor': const DoubleConverter().toJson(instance.heightFactor),
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
