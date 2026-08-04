// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_delay_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDelayAction _$PhlutsDelayActionFromJson(Map<String, dynamic> json) =>
    PhlutsDelayAction(milliseconds: (json['milliseconds'] as num?)?.toInt());

Map<String, dynamic> _$PhlutsDelayActionToJson(PhlutsDelayAction instance) =>
    <String, dynamic>{
      'milliseconds': instance.milliseconds,
      'actionType': instance.actionType,
    };
