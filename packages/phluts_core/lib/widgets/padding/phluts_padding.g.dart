// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_padding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsPadding _$PhlutsPaddingFromJson(Map<String, dynamic> json) => PhlutsPadding(
  padding: json['padding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['padding']),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsPaddingToJson(PhlutsPadding instance) =>
    <String, dynamic>{
      'padding': instance.padding?.toJson(),
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
