// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_sliver_opacity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSliverOpacity _$PhlutsSliverOpacityFromJson(Map<String, dynamic> json) =>
    PhlutsSliverOpacity(
      opacity: (json['opacity'] as num).toDouble(),
      alwaysIncludeSemantics: json['alwaysIncludeSemantics'] as bool?,
      sliver: json['sliver'] == null
          ? null
          : PhlutsWidget.fromJson(json['sliver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsSliverOpacityToJson(
  PhlutsSliverOpacity instance,
) => <String, dynamic>{
  'opacity': instance.opacity,
  'alwaysIncludeSemantics': instance.alwaysIncludeSemantics,
  'sliver': instance.sliver?.toJson(),
  'type': instance.type,
};
