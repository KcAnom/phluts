// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_navigation_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsNavigationView _$PhlutsNavigationViewFromJson(Map<String, dynamic> json) =>
    PhlutsNavigationView(
      children: (json['children'] as List<dynamic>)
          .map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PhlutsNavigationViewToJson(PhlutsNavigationView instance) =>
    <String, dynamic>{
      'children': instance.children.map((e) => e.toJson()).toList(),
      'type': instance.type,
    };
