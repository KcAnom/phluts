// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_sliver_padding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSliverPadding _$PhlutsSliverPaddingFromJson(Map<String, dynamic> json) =>
    PhlutsSliverPadding(
      sliver: PhlutsWidget.fromJson(json['sliver'] as Map<String, dynamic>),
      padding: PhlutsEdgeInsets.fromJson(json['padding']),
    );

Map<String, dynamic> _$PhlutsSliverPaddingToJson(PhlutsSliverPadding instance) =>
    <String, dynamic>{
      'padding': instance.padding.toJson(),
      'sliver': instance.sliver.toJson(),
      'type': instance.type,
    };
