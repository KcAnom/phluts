// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_bottom_navigation_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsBottomNavigationView _$PhlutsBottomNavigationViewFromJson(
  Map<String, dynamic> json,
) => PhlutsBottomNavigationView(
  children: (json['children'] as List<dynamic>)
      .map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PhlutsBottomNavigationViewToJson(
  PhlutsBottomNavigationView instance,
) => <String, dynamic>{
  'children': instance.children.map((e) => e.toJson()).toList(),
  'type': instance.type,
};
