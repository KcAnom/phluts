// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsHero _$PhlutsHeroFromJson(Map<String, dynamic> json) => PhlutsHero(
  tag: json['tag'],
  child: PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
  createRectTween: json['createRectTween'] == null
      ? null
      : PhlutsRectTween.fromJson(
          json['createRectTween'] as Map<String, dynamic>,
        ),
  flightShuttleBuilder: json['flightShuttleBuilder'] == null
      ? null
      : PhlutsWidget.fromJson(
          json['flightShuttleBuilder'] as Map<String, dynamic>,
        ),
  placeholderBuilder: json['placeholderBuilder'] == null
      ? null
      : PhlutsWidget.fromJson(
          json['placeholderBuilder'] as Map<String, dynamic>,
        ),
  transitionOnUserGestures: json['transitionOnUserGestures'] as bool?,
);

Map<String, dynamic> _$PhlutsHeroToJson(PhlutsHero instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'child': instance.child.toJson(),
      'createRectTween': instance.createRectTween?.toJson(),
      'flightShuttleBuilder': instance.flightShuttleBuilder?.toJson(),
      'placeholderBuilder': instance.placeholderBuilder?.toJson(),
      'transitionOnUserGestures': instance.transitionOnUserGestures,
      'type': instance.type,
    };
