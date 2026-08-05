// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_chip_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsChipThemeData _$PhlutsChipThemeDataFromJson(Map<String, dynamic> json) =>
    PhlutsChipThemeData(
      color: json['color'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      deleteIconColor: json['deleteIconColor'] as String?,
      disabledColor: json['disabledColor'] as String?,
      selectedColor: json['selectedColor'] as String?,
      secondarySelectedColor: json['secondarySelectedColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      selectedShadowColor: json['selectedShadowColor'] as String?,
      showCheckmark: json['showCheckmark'] as bool?,
      checkmarkColor: json['checkmarkColor'] as String?,
      labelPadding: json['labelPadding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['labelPadding']),
      padding: json['padding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['padding']),
      side: json['side'] == null
          ? null
          : PhlutsBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      shape: json['shape'] == null
          ? null
          : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      labelStyle: json['labelStyle'] == null
          ? null
          : PhlutsTextStyle.fromJson(json['labelStyle']),
      secondaryLabelStyle: json['secondaryLabelStyle'] == null
          ? null
          : PhlutsTextStyle.fromJson(json['secondaryLabelStyle']),
      brightness: $enumDecodeNullable(
        _$PhlutsBrightnessEnumMap,
        json['brightness'],
      ),
      elevation: (json['elevation'] as num?)?.toDouble(),
      pressElevation: (json['pressElevation'] as num?)?.toDouble(),
      iconTheme: json['iconTheme'] == null
          ? null
          : PhlutsIconThemeData.fromJson(
              json['iconTheme'] as Map<String, dynamic>,
            ),
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

Map<String, dynamic> _$PhlutsChipThemeDataToJson(
  PhlutsChipThemeData instance,
) => <String, dynamic>{
  'color': instance.color,
  'backgroundColor': instance.backgroundColor,
  'deleteIconColor': instance.deleteIconColor,
  'disabledColor': instance.disabledColor,
  'selectedColor': instance.selectedColor,
  'secondarySelectedColor': instance.secondarySelectedColor,
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'selectedShadowColor': instance.selectedShadowColor,
  'showCheckmark': instance.showCheckmark,
  'checkmarkColor': instance.checkmarkColor,
  'labelPadding': instance.labelPadding?.toJson(),
  'padding': instance.padding?.toJson(),
  'side': instance.side?.toJson(),
  'shape': instance.shape?.toJson(),
  'labelStyle': instance.labelStyle?.toJson(),
  'secondaryLabelStyle': instance.secondaryLabelStyle?.toJson(),
  'brightness': _$PhlutsBrightnessEnumMap[instance.brightness],
  'elevation': instance.elevation,
  'pressElevation': instance.pressElevation,
  'iconTheme': instance.iconTheme?.toJson(),
  'avatarBoxConstraints': instance.avatarBoxConstraints?.toJson(),
  'deleteIconBoxConstraints': instance.deleteIconBoxConstraints?.toJson(),
};

const _$PhlutsBrightnessEnumMap = {
  PhlutsBrightness.light: 'light',
  PhlutsBrightness.dark: 'dark',
  PhlutsBrightness.system: 'system',
};
