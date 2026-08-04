// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_bottom_navigation_bar_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsBottomNavigationBarItem _$PhlutsBottomNavigationBarItemFromJson(
  Map<String, dynamic> json,
) => PhlutsBottomNavigationBarItem(
  icon: PhlutsWidget.fromJson(json['icon'] as Map<String, dynamic>),
  label: json['label'] as String,
  activeIcon: json['activeIcon'] == null
      ? null
      : PhlutsWidget.fromJson(json['activeIcon'] as Map<String, dynamic>),
  backgroundColor: json['backgroundColor'] as String?,
  tooltip: json['tooltip'] as String?,
);

Map<String, dynamic> _$PhlutsBottomNavigationBarItemToJson(
  PhlutsBottomNavigationBarItem instance,
) => <String, dynamic>{
  'icon': instance.icon.toJson(),
  'label': instance.label,
  'activeIcon': instance.activeIcon?.toJson(),
  'backgroundColor': instance.backgroundColor,
  'tooltip': instance.tooltip,
};
