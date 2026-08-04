// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_default_tab_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDefaultTabController _$PhlutsDefaultTabControllerFromJson(
  Map<String, dynamic> json,
) => PhlutsDefaultTabController(
  length: (json['length'] as num).toInt(),
  initialIndex: (json['initialIndex'] as num?)?.toInt(),
  animationDuration: json['animationDuration'] == null
      ? null
      : PhlutsDuration.fromJson(
          json['animationDuration'] as Map<String, dynamic>,
        ),
  child: PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsDefaultTabControllerToJson(
  PhlutsDefaultTabController instance,
) => <String, dynamic>{
  'length': instance.length,
  'initialIndex': instance.initialIndex,
  'animationDuration': instance.animationDuration?.toJson(),
  'child': instance.child.toJson(),
  'type': instance.type,
};
