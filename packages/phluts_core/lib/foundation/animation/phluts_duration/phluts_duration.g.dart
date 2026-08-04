// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_duration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDuration _$PhlutsDurationFromJson(Map<String, dynamic> json) => PhlutsDuration(
  days: (json['days'] as num?)?.toInt(),
  hours: (json['hours'] as num?)?.toInt(),
  minutes: (json['minutes'] as num?)?.toInt(),
  seconds: (json['seconds'] as num?)?.toInt(),
  milliseconds: (json['milliseconds'] as num?)?.toInt(),
  microseconds: (json['microseconds'] as num?)?.toInt(),
);

Map<String, dynamic> _$PhlutsDurationToJson(PhlutsDuration instance) =>
    <String, dynamic>{
      'days': instance.days,
      'hours': instance.hours,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
      'milliseconds': instance.milliseconds,
      'microseconds': instance.microseconds,
    };
