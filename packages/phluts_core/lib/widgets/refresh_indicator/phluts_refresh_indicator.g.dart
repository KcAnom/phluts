// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_refresh_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsRefreshIndicator _$PhlutsRefreshIndicatorFromJson(
  Map<String, dynamic> json,
) => PhlutsRefreshIndicator(
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
  onRefresh: json['onRefresh'] == null
      ? null
      : PhlutsAction.fromJson(json['onRefresh'] as Map<String, dynamic>),
  displacement: const DoubleConverter().fromJson(json['displacement']),
  edgeOffset: const DoubleConverter().fromJson(json['edgeOffset']),
  color: json['color'] as String?,
  backgroundColor: json['backgroundColor'] as String?,
  semanticsLabel: json['semanticsLabel'] as String?,
  semanticsValue: json['semanticsValue'] as String?,
  strokeWidth: const DoubleConverter().fromJson(json['strokeWidth']),
  triggerMode: $enumDecodeNullable(
    _$PhlutsRefreshIndicatorTriggerModeEnumMap,
    json['triggerMode'],
  ),
);

Map<String, dynamic> _$PhlutsRefreshIndicatorToJson(
  PhlutsRefreshIndicator instance,
) => <String, dynamic>{
  'child': instance.child?.toJson(),
  'onRefresh': instance.onRefresh?.toJson(),
  'displacement': const DoubleConverter().toJson(instance.displacement),
  'edgeOffset': const DoubleConverter().toJson(instance.edgeOffset),
  'color': instance.color,
  'backgroundColor': instance.backgroundColor,
  'semanticsLabel': instance.semanticsLabel,
  'semanticsValue': instance.semanticsValue,
  'strokeWidth': const DoubleConverter().toJson(instance.strokeWidth),
  'triggerMode':
      _$PhlutsRefreshIndicatorTriggerModeEnumMap[instance.triggerMode],
  'type': instance.type,
};

const _$PhlutsRefreshIndicatorTriggerModeEnumMap = {
  PhlutsRefreshIndicatorTriggerMode.onEdge: 'onEdge',
  PhlutsRefreshIndicatorTriggerMode.anywhere: 'anywhere',
};
