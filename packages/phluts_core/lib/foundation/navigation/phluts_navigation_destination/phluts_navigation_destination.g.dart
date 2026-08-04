// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_navigation_destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsNavigationDestination _$PhlutsNavigationDestinationFromJson(
  Map<String, dynamic> json,
) => PhlutsNavigationDestination(
  icon: PhlutsWidget.fromJson(json['icon'] as Map<String, dynamic>),
  label: json['label'] as String,
  selectedIcon: json['selectedIcon'] == null
      ? null
      : PhlutsWidget.fromJson(json['selectedIcon'] as Map<String, dynamic>),
  tooltip: json['tooltip'] as String?,
  enabled: json['enabled'] as bool?,
);

Map<String, dynamic> _$PhlutsNavigationDestinationToJson(
  PhlutsNavigationDestination instance,
) => <String, dynamic>{
  'icon': instance.icon.toJson(),
  'label': instance.label,
  'selectedIcon': instance.selectedIcon?.toJson(),
  'tooltip': instance.tooltip,
  'enabled': instance.enabled,
};
