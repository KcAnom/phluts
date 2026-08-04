// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_wrap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsWrap _$PhlutsWrapFromJson(Map<String, dynamic> json) => PhlutsWrap(
  direction: $enumDecodeNullable(_$PhlutsAxisEnumMap, json['direction']),
  alignment: $enumDecodeNullable(_$PhlutsWrapAlignmentEnumMap, json['alignment']),
  spacing: const DoubleConverter().fromJson(json['spacing']),
  runAlignment: $enumDecodeNullable(
    _$PhlutsWrapAlignmentEnumMap,
    json['runAlignment'],
  ),
  runSpacing: const DoubleConverter().fromJson(json['runSpacing']),
  crossAxisAlignment: $enumDecodeNullable(
    _$PhlutsWrapCrossAlignmentEnumMap,
    json['crossAxisAlignment'],
  ),
  textDirection: $enumDecodeNullable(
    _$PhlutsTextDirectionEnumMap,
    json['textDirection'],
  ),
  verticalDirection: $enumDecodeNullable(
    _$PhlutsVerticalDirectionEnumMap,
    json['verticalDirection'],
  ),
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PhlutsWrapToJson(PhlutsWrap instance) => <String, dynamic>{
  'direction': _$PhlutsAxisEnumMap[instance.direction],
  'alignment': _$PhlutsWrapAlignmentEnumMap[instance.alignment],
  'spacing': const DoubleConverter().toJson(instance.spacing),
  'runAlignment': _$PhlutsWrapAlignmentEnumMap[instance.runAlignment],
  'runSpacing': const DoubleConverter().toJson(instance.runSpacing),
  'crossAxisAlignment':
      _$PhlutsWrapCrossAlignmentEnumMap[instance.crossAxisAlignment],
  'textDirection': _$PhlutsTextDirectionEnumMap[instance.textDirection],
  'verticalDirection':
      _$PhlutsVerticalDirectionEnumMap[instance.verticalDirection],
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
  'children': instance.children?.map((e) => e.toJson()).toList(),
  'type': instance.type,
};

const _$PhlutsAxisEnumMap = {
  PhlutsAxis.horizontal: 'horizontal',
  PhlutsAxis.vertical: 'vertical',
};

const _$PhlutsWrapAlignmentEnumMap = {
  PhlutsWrapAlignment.start: 'start',
  PhlutsWrapAlignment.end: 'end',
  PhlutsWrapAlignment.center: 'center',
  PhlutsWrapAlignment.spaceBetween: 'spaceBetween',
  PhlutsWrapAlignment.spaceAround: 'spaceAround',
  PhlutsWrapAlignment.spaceEvenly: 'spaceEvenly',
};

const _$PhlutsWrapCrossAlignmentEnumMap = {
  PhlutsWrapCrossAlignment.start: 'start',
  PhlutsWrapCrossAlignment.end: 'end',
  PhlutsWrapCrossAlignment.center: 'center',
};

const _$PhlutsTextDirectionEnumMap = {
  PhlutsTextDirection.rtl: 'rtl',
  PhlutsTextDirection.ltr: 'ltr',
};

const _$PhlutsVerticalDirectionEnumMap = {
  PhlutsVerticalDirection.up: 'up',
  PhlutsVerticalDirection.down: 'down',
};

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
