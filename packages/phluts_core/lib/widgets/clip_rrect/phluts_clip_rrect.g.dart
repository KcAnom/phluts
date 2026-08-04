// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_clip_rrect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsClipRRect _$PhlutsClipRRectFromJson(Map<String, dynamic> json) =>
    PhlutsClipRRect(
      borderRadius: json['borderRadius'] == null
          ? null
          : PhlutsBorderRadius.fromJson(json['borderRadius']),
      clipBehavior: $enumDecodeNullable(
        _$PhlutsClipEnumMap,
        json['clipBehavior'],
      ),
      child: json['child'] == null
          ? null
          : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhlutsClipRRectToJson(PhlutsClipRRect instance) =>
    <String, dynamic>{
      'borderRadius': instance.borderRadius?.toJson(),
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
