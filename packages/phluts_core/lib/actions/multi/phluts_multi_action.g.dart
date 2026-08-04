// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_multi_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsMultiAction _$PhlutsMultiActionFromJson(Map<String, dynamic> json) =>
    PhlutsMultiAction(
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => PhlutsAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      sync: json['sync'] as bool? ?? false,
    );

Map<String, dynamic> _$PhlutsMultiActionToJson(PhlutsMultiAction instance) =>
    <String, dynamic>{
      'actions': instance.actions?.map((e) => e.toJson()).toList(),
      'sync': instance.sync,
      'actionType': instance.actionType,
    };
