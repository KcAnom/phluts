// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_radio_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsRadioGroup _$PhlutsRadioGroupFromJson(Map<String, dynamic> json) =>
    PhlutsRadioGroup(
      id: json['id'] as String?,
      groupValue: json['groupValue'],
      child: json['child'] == null
          ? null
          : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
      onChanged: json['onChanged'] == null
          ? null
          : PhlutsAction.fromJson(json['onChanged'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsRadioGroupToJson(PhlutsRadioGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupValue': instance.groupValue,
      'child': instance.child?.toJson(),
      'onChanged': instance.onChanged?.toJson(),
      'type': instance.type,
    };
