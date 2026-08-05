// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_opacity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsOpacity _$PhlutsOpacityFromJson(Map<String, dynamic> json) =>
    PhlutsOpacity(
      opacity: (json['opacity'] as num).toDouble(),
      alwaysIncludeSemantics: json['alwaysIncludeSemantics'] as bool?,
      child: json['child'] == null
          ? null
          : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsOpacityToJson(PhlutsOpacity instance) =>
    <String, dynamic>{
      'opacity': instance.opacity,
      'alwaysIncludeSemantics': instance.alwaysIncludeSemantics,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
