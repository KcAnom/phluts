// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_button_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsButtonThemeData _$PhlutsButtonThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsButtonThemeData(
  textTheme: $enumDecodeNullable(
    _$PhlutsButtonTextThemeEnumMap,
    json['textTheme'],
  ),
  minWidth: (json['minWidth'] as num?)?.toDouble(),
  height: (json['height'] as num?)?.toDouble(),
  padding: json['padding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['padding']),
  shape: json['shape'] == null
      ? null
      : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  layoutBehavior: $enumDecodeNullable(
    _$PhlutsButtonBarLayoutBehaviorEnumMap,
    json['layoutBehavior'],
  ),
  alignedDropdown: json['alignedDropdown'] as bool?,
  buttonColor: json['buttonColor'] as String?,
  disabledColor: json['disabledColor'] as String?,
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  highlightColor: json['highlightColor'] as String?,
  splashColor: json['splashColor'] as String?,
  colorScheme: json['colorScheme'] == null
      ? null
      : PhlutsColorScheme.fromJson(json['colorScheme'] as Map<String, dynamic>),
  materialTapTargetSize: $enumDecodeNullable(
    _$PhlutsMaterialTapTargetSizeEnumMap,
    json['materialTapTargetSize'],
  ),
);

Map<String, dynamic> _$PhlutsButtonThemeDataToJson(
  PhlutsButtonThemeData instance,
) => <String, dynamic>{
  'textTheme': _$PhlutsButtonTextThemeEnumMap[instance.textTheme],
  'minWidth': instance.minWidth,
  'height': instance.height,
  'padding': instance.padding?.toJson(),
  'shape': instance.shape?.toJson(),
  'layoutBehavior':
      _$PhlutsButtonBarLayoutBehaviorEnumMap[instance.layoutBehavior],
  'alignedDropdown': instance.alignedDropdown,
  'buttonColor': instance.buttonColor,
  'disabledColor': instance.disabledColor,
  'focusColor': instance.focusColor,
  'hoverColor': instance.hoverColor,
  'highlightColor': instance.highlightColor,
  'splashColor': instance.splashColor,
  'colorScheme': instance.colorScheme?.toJson(),
  'materialTapTargetSize':
      _$PhlutsMaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
};

const _$PhlutsButtonTextThemeEnumMap = {
  PhlutsButtonTextTheme.normal: 'normal',
  PhlutsButtonTextTheme.accent: 'accent',
  PhlutsButtonTextTheme.primary: 'primary',
};

const _$PhlutsButtonBarLayoutBehaviorEnumMap = {
  PhlutsButtonBarLayoutBehavior.constrained: 'constrained',
  PhlutsButtonBarLayoutBehavior.padded: 'padded',
};

const _$PhlutsMaterialTapTargetSizeEnumMap = {
  PhlutsMaterialTapTargetSize.padded: 'padded',
  PhlutsMaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
