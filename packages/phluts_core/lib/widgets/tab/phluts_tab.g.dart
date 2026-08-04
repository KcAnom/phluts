// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_tab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsTab _$PhlutsTabFromJson(Map<String, dynamic> json) => PhlutsTab(
  text: json['text'] as String?,
  icon: json['icon'] == null
      ? null
      : PhlutsWidget.fromJson(json['icon'] as Map<String, dynamic>),
  iconMargin: json['iconMargin'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['iconMargin']),
  height: const DoubleConverter().fromJson(json['height']),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsTabToJson(PhlutsTab instance) => <String, dynamic>{
  'text': instance.text,
  'icon': instance.icon?.toJson(),
  'iconMargin': instance.iconMargin?.toJson(),
  'height': const DoubleConverter().toJson(instance.height),
  'child': instance.child?.toJson(),
  'type': instance.type,
};
