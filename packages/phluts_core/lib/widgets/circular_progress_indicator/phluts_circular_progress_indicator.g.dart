// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_circular_progress_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsCircularProgressIndicator _$PhlutsCircularProgressIndicatorFromJson(
  Map<String, dynamic> json,
) => PhlutsCircularProgressIndicator(
  value: const DoubleConverter().fromJson(json['value']),
  backgroundColor: json['backgroundColor'] as String?,
  color: json['color'] as String?,
  strokeWidth: const DoubleConverter().fromJson(json['strokeWidth']),
  strokeAlign: const DoubleConverter().fromJson(json['strokeAlign']),
  semanticsLabel: json['semanticsLabel'] as String?,
  semanticsValue: json['semanticsValue'] as String?,
  strokeCap: $enumDecodeNullable(_$PhlutsStrokeCapEnumMap, json['strokeCap']),
);

Map<String, dynamic> _$PhlutsCircularProgressIndicatorToJson(
  PhlutsCircularProgressIndicator instance,
) => <String, dynamic>{
  'value': const DoubleConverter().toJson(instance.value),
  'backgroundColor': instance.backgroundColor,
  'color': instance.color,
  'strokeWidth': const DoubleConverter().toJson(instance.strokeWidth),
  'strokeAlign': const DoubleConverter().toJson(instance.strokeAlign),
  'semanticsLabel': instance.semanticsLabel,
  'semanticsValue': instance.semanticsValue,
  'strokeCap': _$PhlutsStrokeCapEnumMap[instance.strokeCap],
  'type': instance.type,
};

const _$PhlutsStrokeCapEnumMap = {
  PhlutsStrokeCap.butt: 'butt',
  PhlutsStrokeCap.round: 'round',
  PhlutsStrokeCap.square: 'square',
};
