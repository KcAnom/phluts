// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_placeholder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsPlaceholder _$PhlutsPlaceholderFromJson(Map<String, dynamic> json) =>
    PhlutsPlaceholder(
      fallbackWidth: const DoubleConverter().fromJson(json['fallbackWidth']),
      fallbackHeight: const DoubleConverter().fromJson(json['fallbackHeight']),
      strokeWidth: const DoubleConverter().fromJson(json['strokeWidth']),
      color: json['color'] as String?,
      child: json['child'] == null
          ? null
          : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsPlaceholderToJson(PhlutsPlaceholder instance) =>
    <String, dynamic>{
      'fallbackWidth': const DoubleConverter().toJson(instance.fallbackWidth),
      'fallbackHeight': const DoubleConverter().toJson(instance.fallbackHeight),
      'strokeWidth': const DoubleConverter().toJson(instance.strokeWidth),
      'color': instance.color,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
