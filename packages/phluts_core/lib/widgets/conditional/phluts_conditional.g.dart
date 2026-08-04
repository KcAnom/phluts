// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_conditional.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsConditional _$PhlutsConditionalFromJson(Map<String, dynamic> json) =>
    PhlutsConditional(
      condition: json['condition'] as String,
      ifTrue: PhlutsWidget.fromJson(json['ifTrue'] as Map<String, dynamic>),
      ifFalse: json['ifFalse'] == null
          ? null
          : PhlutsWidget.fromJson(json['ifFalse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsConditionalToJson(PhlutsConditional instance) =>
    <String, dynamic>{
      'condition': instance.condition,
      'ifTrue': instance.ifTrue.toJson(),
      'ifFalse': instance.ifFalse?.toJson(),
      'type': instance.type,
    };
