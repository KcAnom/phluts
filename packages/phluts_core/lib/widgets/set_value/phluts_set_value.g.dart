// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_set_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSetValue _$PhlutsSetValueFromJson(Map<String, dynamic> json) => PhlutsSetValue(
  values:
      (json['values'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const [],
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsSetValueToJson(PhlutsSetValue instance) =>
    <String, dynamic>{
      'values': instance.values,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
