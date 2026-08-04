// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_linear_progress_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsLinearProgressIndicator _$PhlutsLinearProgressIndicatorFromJson(
  Map<String, dynamic> json,
) => PhlutsLinearProgressIndicator(
  value: const DoubleConverter().fromJson(json['value']),
  backgroundColor: json['backgroundColor'] as String?,
  color: json['color'] as String?,
  minHeight: const DoubleConverter().fromJson(json['minHeight']),
  semanticsLabel: json['semanticsLabel'] as String?,
  semanticsValue: json['semanticsValue'] as String?,
  borderRadius: json['borderRadius'] == null
      ? null
      : PhlutsBorderRadius.fromJson(json['borderRadius']),
);

Map<String, dynamic> _$PhlutsLinearProgressIndicatorToJson(
  PhlutsLinearProgressIndicator instance,
) => <String, dynamic>{
  'value': const DoubleConverter().toJson(instance.value),
  'backgroundColor': instance.backgroundColor,
  'color': instance.color,
  'minHeight': const DoubleConverter().toJson(instance.minHeight),
  'semanticsLabel': instance.semanticsLabel,
  'semanticsValue': instance.semanticsValue,
  'borderRadius': instance.borderRadius?.toJson(),
  'type': instance.type,
};
