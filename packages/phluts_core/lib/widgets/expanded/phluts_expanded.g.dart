// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_expanded.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsExpanded _$PhlutsExpandedFromJson(Map<String, dynamic> json) => PhlutsExpanded(
  flex: (json['flex'] as num?)?.toInt(),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsExpandedToJson(PhlutsExpanded instance) =>
    <String, dynamic>{
      'flex': instance.flex,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
