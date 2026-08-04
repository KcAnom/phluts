// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_visibility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsVisibility _$PhlutsVisibilityFromJson(Map<String, dynamic> json) =>
    PhlutsVisibility(
      visible: json['visible'] as bool?,
      child: json['child'] == null
          ? null
          : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
      replacement: json['replacement'] == null
          ? null
          : PhlutsWidget.fromJson(json['replacement'] as Map<String, dynamic>),
      maintainState: json['maintainState'] as bool?,
      maintainAnimation: json['maintainAnimation'] as bool?,
      maintainSize: json['maintainSize'] as bool?,
      maintainSemantics: json['maintainSemantics'] as bool?,
      maintainInteractivity: json['maintainInteractivity'] as bool?,
    );

Map<String, dynamic> _$PhlutsVisibilityToJson(PhlutsVisibility instance) =>
    <String, dynamic>{
      'child': instance.child?.toJson(),
      'visible': instance.visible,
      'replacement': instance.replacement?.toJson(),
      'maintainState': instance.maintainState,
      'maintainAnimation': instance.maintainAnimation,
      'maintainSize': instance.maintainSize,
      'maintainSemantics': instance.maintainSemantics,
      'maintainInteractivity': instance.maintainInteractivity,
      'type': instance.type,
    };
