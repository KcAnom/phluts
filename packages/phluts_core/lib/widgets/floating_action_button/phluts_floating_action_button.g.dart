// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_floating_action_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsFloatingActionButton _$PhlutsFloatingActionButtonFromJson(
  Map<String, dynamic> json,
) => PhlutsFloatingActionButton(
  onPressed: json['onPressed'] == null
      ? null
      : PhlutsAction.fromJson(json['onPressed'] as Map<String, dynamic>),
  textStyle: json['textStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['textStyle']),
  buttonType:
      $enumDecodeNullable(
        _$PhlutsFloatingActionButtonTypeEnumMap,
        json['buttonType'],
      ) ??
      PhlutsFloatingActionButtonType.small,
  autofocus: json['autofocus'] as bool?,
  icon: json['icon'] == null
      ? null
      : PhlutsWidget.fromJson(json['icon'] as Map<String, dynamic>),
  backgroundColor: json['backgroundColor'] as String?,
  foregroundColor: json['foregroundColor'] as String?,
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  splashColor: json['splashColor'] as String?,
  extendedTextStyle: json['extendedTextStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['extendedTextStyle']),
  elevation: (json['elevation'] as num?)?.toDouble(),
  focusElevation: (json['focusElevation'] as num?)?.toDouble(),
  hoverElevation: (json['hoverElevation'] as num?)?.toDouble(),
  disabledElevation: (json['disabledElevation'] as num?)?.toDouble(),
  highlightElevation: (json['highlightElevation'] as num?)?.toDouble(),
  extendedIconLabelSpacing: (json['extendedIconLabelSpacing'] as num?)
      ?.toDouble(),
  enableFeedback: json['enableFeedback'] as bool?,
  tooltip: json['tooltip'] as String?,
  heroTag: json['heroTag'],
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsFloatingActionButtonToJson(
  PhlutsFloatingActionButton instance,
) => <String, dynamic>{
  'onPressed': instance.onPressed?.toJson(),
  'textStyle': instance.textStyle?.toJson(),
  'buttonType': _$PhlutsFloatingActionButtonTypeEnumMap[instance.buttonType]!,
  'autofocus': instance.autofocus,
  'icon': instance.icon?.toJson(),
  'backgroundColor': instance.backgroundColor,
  'foregroundColor': instance.foregroundColor,
  'focusColor': instance.focusColor,
  'hoverColor': instance.hoverColor,
  'splashColor': instance.splashColor,
  'extendedTextStyle': instance.extendedTextStyle?.toJson(),
  'elevation': instance.elevation,
  'focusElevation': instance.focusElevation,
  'hoverElevation': instance.hoverElevation,
  'disabledElevation': instance.disabledElevation,
  'highlightElevation': instance.highlightElevation,
  'extendedIconLabelSpacing': instance.extendedIconLabelSpacing,
  'enableFeedback': instance.enableFeedback,
  'tooltip': instance.tooltip,
  'heroTag': instance.heroTag,
  'child': instance.child?.toJson(),
  'type': instance.type,
};

const _$PhlutsFloatingActionButtonTypeEnumMap = {
  PhlutsFloatingActionButtonType.extended: 'extended',
  PhlutsFloatingActionButtonType.large: 'large',
  PhlutsFloatingActionButtonType.medium: 'medium',
  PhlutsFloatingActionButtonType.small: 'small',
};
