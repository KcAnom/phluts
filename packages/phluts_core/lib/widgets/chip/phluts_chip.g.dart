// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_chip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsChip _$PhlutsChipFromJson(Map<String, dynamic> json) => PhlutsChip(
  avatar: json['avatar'] == null
      ? null
      : PhlutsWidget.fromJson(json['avatar'] as Map<String, dynamic>),
  label: PhlutsWidget.fromJson(json['label'] as Map<String, dynamic>),
  labelStyle: json['labelStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['labelStyle']),
  labelPadding: json['labelPadding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['labelPadding']),
  deleteIcon: json['deleteIcon'] == null
      ? null
      : PhlutsWidget.fromJson(json['deleteIcon'] as Map<String, dynamic>),
  onDeleted: json['onDeleted'] == null
      ? null
      : PhlutsAction.fromJson(json['onDeleted'] as Map<String, dynamic>),
  deleteIconColor: json['deleteIconColor'] as String?,
  deleteButtonTooltipMessage: json['deleteButtonTooltipMessage'] as String?,
  side: json['side'] == null
      ? null
      : PhlutsBorderSide.fromJson(json['side'] as Map<String, dynamic>),
  shape: json['shape'] == null
      ? null
      : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
  autofocus: json['autofocus'] as bool?,
  color: json['color'] as String?,
  backgroundColor: json['backgroundColor'] as String?,
  padding: json['padding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['padding']),
  visualDensity: json['visualDensity'] == null
      ? null
      : PhlutsVisualDensity.fromJson(
          json['visualDensity'] as Map<String, dynamic>,
        ),
  materialTapTargetSize: $enumDecodeNullable(
    _$PhlutsMaterialTapTargetSizeEnumMap,
    json['materialTapTargetSize'],
  ),
  elevation: const DoubleConverter().fromJson(json['elevation']),
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  avatarBoxConstraints: json['avatarBoxConstraints'] == null
      ? null
      : PhlutsBoxConstraints.fromJson(
          json['avatarBoxConstraints'] as Map<String, dynamic>,
        ),
  deleteIconBoxConstraints: json['deleteIconBoxConstraints'] == null
      ? null
      : PhlutsBoxConstraints.fromJson(
          json['deleteIconBoxConstraints'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PhlutsChipToJson(PhlutsChip instance) => <String, dynamic>{
  'avatar': instance.avatar?.toJson(),
  'label': instance.label.toJson(),
  'labelStyle': instance.labelStyle?.toJson(),
  'labelPadding': instance.labelPadding?.toJson(),
  'deleteIcon': instance.deleteIcon?.toJson(),
  'onDeleted': instance.onDeleted?.toJson(),
  'deleteIconColor': instance.deleteIconColor,
  'deleteButtonTooltipMessage': instance.deleteButtonTooltipMessage,
  'side': instance.side?.toJson(),
  'shape': instance.shape?.toJson(),
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
  'autofocus': instance.autofocus,
  'color': instance.color,
  'backgroundColor': instance.backgroundColor,
  'padding': instance.padding?.toJson(),
  'visualDensity': instance.visualDensity?.toJson(),
  'materialTapTargetSize':
      _$PhlutsMaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
  'elevation': const DoubleConverter().toJson(instance.elevation),
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'avatarBoxConstraints': instance.avatarBoxConstraints?.toJson(),
  'deleteIconBoxConstraints': instance.deleteIconBoxConstraints?.toJson(),
  'type': instance.type,
};

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};

const _$PhlutsMaterialTapTargetSizeEnumMap = {
  PhlutsMaterialTapTargetSize.padded: 'padded',
  PhlutsMaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
