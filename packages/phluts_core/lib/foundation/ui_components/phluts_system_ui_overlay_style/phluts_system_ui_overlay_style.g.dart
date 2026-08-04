// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_system_ui_overlay_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSystemUIOverlayStyle _$PhlutsSystemUIOverlayStyleFromJson(
  Map<String, dynamic> json,
) => PhlutsSystemUIOverlayStyle(
  systemNavigationBarColor: json['systemNavigationBarColor'] as String?,
  systemNavigationBarDividerColor:
      json['systemNavigationBarDividerColor'] as String?,
  systemNavigationBarIconBrightness: $enumDecodeNullable(
    _$PhlutsBrightnessEnumMap,
    json['systemNavigationBarIconBrightness'],
  ),
  systemNavigationBarContrastEnforced:
      json['systemNavigationBarContrastEnforced'] as bool?,
  statusBarColor: json['statusBarColor'] as String?,
  statusBarBrightness: $enumDecodeNullable(
    _$PhlutsBrightnessEnumMap,
    json['statusBarBrightness'],
  ),
  statusBarIconBrightness: $enumDecodeNullable(
    _$PhlutsBrightnessEnumMap,
    json['statusBarIconBrightness'],
  ),
  systemStatusBarContrastEnforced:
      json['systemStatusBarContrastEnforced'] as bool?,
);

Map<String, dynamic> _$PhlutsSystemUIOverlayStyleToJson(
  PhlutsSystemUIOverlayStyle instance,
) => <String, dynamic>{
  'systemNavigationBarColor': instance.systemNavigationBarColor,
  'systemNavigationBarDividerColor': instance.systemNavigationBarDividerColor,
  'systemNavigationBarIconBrightness':
      _$PhlutsBrightnessEnumMap[instance.systemNavigationBarIconBrightness],
  'systemNavigationBarContrastEnforced':
      instance.systemNavigationBarContrastEnforced,
  'statusBarColor': instance.statusBarColor,
  'statusBarBrightness': _$PhlutsBrightnessEnumMap[instance.statusBarBrightness],
  'statusBarIconBrightness':
      _$PhlutsBrightnessEnumMap[instance.statusBarIconBrightness],
  'systemStatusBarContrastEnforced': instance.systemStatusBarContrastEnforced,
};

const _$PhlutsBrightnessEnumMap = {
  PhlutsBrightness.light: 'light',
  PhlutsBrightness.dark: 'dark',
  PhlutsBrightness.system: 'system',
};
