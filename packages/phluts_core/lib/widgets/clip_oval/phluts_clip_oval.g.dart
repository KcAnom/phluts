// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_clip_oval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsClipOval _$PhlutsClipOvalFromJson(Map<String, dynamic> json) => PhlutsClipOval(
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsClipOvalToJson(PhlutsClipOval instance) =>
    <String, dynamic>{
      'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
      'child': instance.child?.toJson(),
      'type': instance.type,
    };

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
