// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_sliver_fill_remaining.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSliverFillRemaining _$PhlutsSliverFillRemainingFromJson(
  Map<String, dynamic> json,
) => PhlutsSliverFillRemaining(
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
  hasScrollBody: json['hasScrollBody'] as bool?,
  fillOverscroll: json['fillOverscroll'] as bool?,
);

Map<String, dynamic> _$PhlutsSliverFillRemainingToJson(
  PhlutsSliverFillRemaining instance,
) => <String, dynamic>{
  'child': instance.child?.toJson(),
  'hasScrollBody': instance.hasScrollBody,
  'fillOverscroll': instance.fillOverscroll,
  'type': instance.type,
};
