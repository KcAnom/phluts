// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_tool_tip_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsTooltipThemeData _$PhlutsTooltipThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsTooltipThemeData(
  constraints: json['constraints'] == null
      ? null
      : PhlutsBoxConstraints.fromJson(
          json['constraints'] as Map<String, dynamic>,
        ),
  padding: json['padding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['padding']),
  margin: json['margin'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['margin']),
  verticalOffset: (json['verticalOffset'] as num?)?.toDouble(),
  preferBelow: json['preferBelow'] as bool?,
  excludeFromSemantics: json['excludeFromSemantics'] as bool?,
  decoration: json['decoration'] == null
      ? null
      : PhlutsBoxDecoration.fromJson(json['decoration'] as Map<String, dynamic>),
  textStyle: json['textStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['textStyle']),
  textAlign: $enumDecodeNullable(_$PhlutsTextAlignEnumMap, json['textAlign']),
  waitDuration: json['waitDuration'] == null
      ? null
      : PhlutsDuration.fromJson(json['waitDuration'] as Map<String, dynamic>),
  showDuration: json['showDuration'] == null
      ? null
      : PhlutsDuration.fromJson(json['showDuration'] as Map<String, dynamic>),
  exitDuration: json['exitDuration'] == null
      ? null
      : PhlutsDuration.fromJson(json['exitDuration'] as Map<String, dynamic>),
  triggerMode: $enumDecodeNullable(
    _$PhlutsTooltipTriggerModeEnumMap,
    json['triggerMode'],
  ),
  enableFeedback: json['enableFeedback'] as bool?,
);

Map<String, dynamic> _$PhlutsTooltipThemeDataToJson(
  PhlutsTooltipThemeData instance,
) => <String, dynamic>{
  'constraints': instance.constraints?.toJson(),
  'padding': instance.padding?.toJson(),
  'margin': instance.margin?.toJson(),
  'verticalOffset': instance.verticalOffset,
  'preferBelow': instance.preferBelow,
  'excludeFromSemantics': instance.excludeFromSemantics,
  'decoration': instance.decoration?.toJson(),
  'textStyle': instance.textStyle?.toJson(),
  'textAlign': _$PhlutsTextAlignEnumMap[instance.textAlign],
  'waitDuration': instance.waitDuration?.toJson(),
  'showDuration': instance.showDuration?.toJson(),
  'exitDuration': instance.exitDuration?.toJson(),
  'triggerMode': _$PhlutsTooltipTriggerModeEnumMap[instance.triggerMode],
  'enableFeedback': instance.enableFeedback,
};

const _$PhlutsTextAlignEnumMap = {
  PhlutsTextAlign.left: 'left',
  PhlutsTextAlign.right: 'right',
  PhlutsTextAlign.center: 'center',
  PhlutsTextAlign.justify: 'justify',
  PhlutsTextAlign.start: 'start',
  PhlutsTextAlign.end: 'end',
};

const _$PhlutsTooltipTriggerModeEnumMap = {
  PhlutsTooltipTriggerMode.manual: 'manual',
  PhlutsTooltipTriggerMode.longPress: 'longPress',
  PhlutsTooltipTriggerMode.tap: 'tap',
};
