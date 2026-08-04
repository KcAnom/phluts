// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_default_bottom_navigation_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDefaultBottomNavigationController
_$PhlutsDefaultBottomNavigationControllerFromJson(Map<String, dynamic> json) =>
    PhlutsDefaultBottomNavigationController(
      length: (json['length'] as num).toInt(),
      initialIndex: (json['initialIndex'] as num?)?.toInt(),
      child: PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsDefaultBottomNavigationControllerToJson(
  PhlutsDefaultBottomNavigationController instance,
) => <String, dynamic>{
  'length': instance.length,
  'initialIndex': instance.initialIndex,
  'child': instance.child.toJson(),
  'type': instance.type,
};
