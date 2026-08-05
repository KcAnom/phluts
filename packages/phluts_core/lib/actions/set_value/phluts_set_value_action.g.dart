// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_set_value_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSetValueAction _$PhlutsSetValueActionFromJson(
  Map<String, dynamic> json,
) => PhlutsSetValueAction(
  values: (json['values'] as List<dynamic>?)
      ?.map((e) => e as Map<String, dynamic>)
      .toList(),
  action: json['action'] == null
      ? null
      : PhlutsAction.fromJson(json['action'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsSetValueActionToJson(
  PhlutsSetValueAction instance,
) => <String, dynamic>{
  'values': instance.values,
  'action': instance.action?.toJson(),
  'actionType': instance.actionType,
};
