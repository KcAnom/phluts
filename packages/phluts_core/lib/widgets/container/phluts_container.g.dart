// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsContainer _$PhlutsContainerFromJson(
  Map<String, dynamic> json,
) => PhlutsContainer(
  alignment: $enumDecodeNullable(_$PhlutsAlignmentEnumMap, json['alignment']),
  padding: json['padding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['padding']),
  color: json['color'] as String?,
  decoration: json['decoration'] == null
      ? null
      : PhlutsBoxDecoration.fromJson(
          json['decoration'] as Map<String, dynamic>,
        ),
  foregroundDecoration: json['foregroundDecoration'] == null
      ? null
      : PhlutsBoxDecoration.fromJson(
          json['foregroundDecoration'] as Map<String, dynamic>,
        ),
  width: const DoubleConverter().fromJson(json['width']),
  height: const DoubleConverter().fromJson(json['height']),
  constraints: json['constraints'] == null
      ? null
      : PhlutsBoxConstraints.fromJson(
          json['constraints'] as Map<String, dynamic>,
        ),
  margin: json['margin'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['margin']),
  transformAlignment: $enumDecodeNullable(
    _$PhlutsAlignmentEnumMap,
    json['transformAlignment'],
  ),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
);

Map<String, dynamic> _$PhlutsContainerToJson(
  PhlutsContainer instance,
) => <String, dynamic>{
  'alignment': _$PhlutsAlignmentEnumMap[instance.alignment],
  'padding': instance.padding?.toJson(),
  'color': instance.color,
  'decoration': instance.decoration?.toJson(),
  'foregroundDecoration': instance.foregroundDecoration?.toJson(),
  'width': const DoubleConverter().toJson(instance.width),
  'height': const DoubleConverter().toJson(instance.height),
  'constraints': instance.constraints?.toJson(),
  'margin': instance.margin?.toJson(),
  'transformAlignment': _$PhlutsAlignmentEnumMap[instance.transformAlignment],
  'child': instance.child?.toJson(),
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
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

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
