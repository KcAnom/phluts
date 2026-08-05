// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_sliver_safe_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSliverSafeArea _$PhlutsSliverSafeAreaFromJson(
  Map<String, dynamic> json,
) => PhlutsSliverSafeArea(
  left: json['left'] as bool?,
  top: json['top'] as bool?,
  right: json['right'] as bool?,
  bottom: json['bottom'] as bool?,
  minimum: json['minimum'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['minimum']),
  sliver: PhlutsWidget.fromJson(json['sliver'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsSliverSafeAreaToJson(
  PhlutsSliverSafeArea instance,
) => <String, dynamic>{
  'left': instance.left,
  'top': instance.top,
  'right': instance.right,
  'bottom': instance.bottom,
  'minimum': instance.minimum?.toJson(),
  'sliver': instance.sliver.toJson(),
  'type': instance.type,
};
