// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_default_navigation_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDefaultNavigationController _$PhlutsDefaultNavigationControllerFromJson(
  Map<String, dynamic> json,
) => PhlutsDefaultNavigationController(
  length: (json['length'] as num).toInt(),
  initialIndex: (json['initialIndex'] as num?)?.toInt(),
  child: PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsDefaultNavigationControllerToJson(
  PhlutsDefaultNavigationController instance,
) => <String, dynamic>{
  'length': instance.length,
  'initialIndex': instance.initialIndex,
  'child': instance.child.toJson(),
  'type': instance.type,
};
