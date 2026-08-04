// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_sliver_to_box_adapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSliverToBoxAdapter _$PhlutsSliverToBoxAdapterFromJson(
  Map<String, dynamic> json,
) => PhlutsSliverToBoxAdapter(
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsSliverToBoxAdapterToJson(
  PhlutsSliverToBoxAdapter instance,
) => <String, dynamic>{
  'child': instance.child?.toJson(),
  'type': instance.type,
};
