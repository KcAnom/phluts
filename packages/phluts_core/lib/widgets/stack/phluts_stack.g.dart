// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_stack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsStack _$PhlutsStackFromJson(Map<String, dynamic> json) => PhlutsStack(
  alignment: $enumDecodeNullable(_$PhlutsAlignmentEnumMap, json['alignment']),
  textDirection: $enumDecodeNullable(
    _$PhlutsTextDirectionEnumMap,
    json['textDirection'],
  ),
  fit: $enumDecodeNullable(_$PhlutsStackFitEnumMap, json['fit']),
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PhlutsStackToJson(PhlutsStack instance) => <String, dynamic>{
  'alignment': _$PhlutsAlignmentEnumMap[instance.alignment],
  'textDirection': _$PhlutsTextDirectionEnumMap[instance.textDirection],
  'fit': _$PhlutsStackFitEnumMap[instance.fit],
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
  'children': instance.children?.map((e) => e.toJson()).toList(),
  'type': instance.type,
};

const _$PhlutsAlignmentEnumMap = {
  PhlutsAlignment.topLeft: 'topLeft',
  PhlutsAlignment.topCenter: 'topCenter',
  PhlutsAlignment.topRight: 'topRight',
  PhlutsAlignment.centerLeft: 'centerLeft',
  PhlutsAlignment.center: 'center',
  PhlutsAlignment.centerRight: 'centerRight',
  PhlutsAlignment.bottomLeft: 'bottomLeft',
  PhlutsAlignment.bottomCenter: 'bottomCenter',
  PhlutsAlignment.bottomRight: 'bottomRight',
};

const _$PhlutsTextDirectionEnumMap = {
  PhlutsTextDirection.rtl: 'rtl',
  PhlutsTextDirection.ltr: 'ltr',
};

const _$PhlutsStackFitEnumMap = {
  PhlutsStackFit.loose: 'loose',
  PhlutsStackFit.expand: 'expand',
  PhlutsStackFit.passthrough: 'passthrough',
};

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
