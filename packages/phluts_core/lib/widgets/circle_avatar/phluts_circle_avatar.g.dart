// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_circle_avatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsCircleAvatar _$PhlutsCircleAvatarFromJson(Map<String, dynamic> json) =>
    PhlutsCircleAvatar(
      child: json['child'] == null
          ? null
          : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
      backgroundColor: json['backgroundColor'] as String?,
      backgroundImage: json['backgroundImage'] as String?,
      foregroundImage: json['foregroundImage'] as String?,
      foregroundColor: json['foregroundColor'] as String?,
      radius: const DoubleConverter().fromJson(json['radius']),
      minRadius: const DoubleConverter().fromJson(json['minRadius']),
      maxRadius: const DoubleConverter().fromJson(json['maxRadius']),
    );

Map<String, dynamic> _$PhlutsCircleAvatarToJson(PhlutsCircleAvatar instance) =>
    <String, dynamic>{
      'child': instance.child?.toJson(),
      'backgroundColor': instance.backgroundColor,
      'backgroundImage': instance.backgroundImage,
      'foregroundImage': instance.foregroundImage,
      'foregroundColor': instance.foregroundColor,
      'radius': const DoubleConverter().toJson(instance.radius),
      'minRadius': const DoubleConverter().toJson(instance.minRadius),
      'maxRadius': const DoubleConverter().toJson(instance.maxRadius),
      'type': instance.type,
    };
