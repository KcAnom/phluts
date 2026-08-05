// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_safe_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSafeArea _$PhlutsSafeAreaFromJson(Map<String, dynamic> json) =>
    PhlutsSafeArea(
      left: json['left'] as bool?,
      top: json['top'] as bool?,
      right: json['right'] as bool?,
      bottom: json['bottom'] as bool?,
      minimum: json['minimum'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['minimum']),
      maintainBottomViewPadding: json['maintainBottomViewPadding'] as bool?,
      child: json['child'] == null
          ? null
          : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsSafeAreaToJson(PhlutsSafeArea instance) =>
    <String, dynamic>{
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'minimum': instance.minimum?.toJson(),
      'maintainBottomViewPadding': instance.maintainBottomViewPadding,
      'child': instance.child?.toJson(),
      'type': instance.type,
    };
