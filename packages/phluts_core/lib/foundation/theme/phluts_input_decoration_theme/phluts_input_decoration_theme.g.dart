// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_input_decoration_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsInputDecorationTheme _$PhlutsInputDecorationThemeFromJson(
  Map<String, dynamic> json,
) => PhlutsInputDecorationTheme(
  labelStyle: json['labelStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['labelStyle']),
  floatingLabelStyle: json['floatingLabelStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['floatingLabelStyle']),
  helperStyle: json['helperStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['helperStyle']),
  helperMaxLines: (json['helperMaxLines'] as num?)?.toInt(),
  hintStyle: json['hintStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['hintStyle']),
  errorStyle: json['errorStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['errorStyle']),
  errorMaxLines: (json['errorMaxLines'] as num?)?.toInt(),
  floatingLabelBehavior: json['floatingLabelBehavior'] as String?,
  floatingLabelAlignment: json['floatingLabelAlignment'] as String?,
  isDense: json['isDense'] as bool?,
  contentPadding: json['contentPadding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['contentPadding']),
  isCollapsed: json['isCollapsed'] as bool?,
  iconColor: json['iconColor'] as String?,
  prefixStyle: json['prefixStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['prefixStyle']),
  prefixIconColor: json['prefixIconColor'] as String?,
  suffixStyle: json['suffixStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['suffixStyle']),
  suffixIconColor: json['suffixIconColor'] as String?,
  counterStyle: json['counterStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['counterStyle']),
  filled: json['filled'] as bool?,
  fillColor: json['fillColor'] as String?,
  activeIndicatorBorder: json['activeIndicatorBorder'] == null
      ? null
      : PhlutsBorderSide.fromJson(
          json['activeIndicatorBorder'] as Map<String, dynamic>,
        ),
  outlineBorder: json['outlineBorder'] == null
      ? null
      : PhlutsBorderSide.fromJson(
          json['outlineBorder'] as Map<String, dynamic>,
        ),
  focusColor: json['focusColor'] as String?,
  hoverColor: json['hoverColor'] as String?,
  errorBorder: json['errorBorder'] == null
      ? null
      : PhlutsInputBorder.fromJson(json['errorBorder'] as Map<String, dynamic>),
  focusedBorder: json['focusedBorder'] == null
      ? null
      : PhlutsInputBorder.fromJson(
          json['focusedBorder'] as Map<String, dynamic>,
        ),
  focusedErrorBorder: json['focusedErrorBorder'] == null
      ? null
      : PhlutsInputBorder.fromJson(
          json['focusedErrorBorder'] as Map<String, dynamic>,
        ),
  disabledBorder: json['disabledBorder'] == null
      ? null
      : PhlutsInputBorder.fromJson(
          json['disabledBorder'] as Map<String, dynamic>,
        ),
  enabledBorder: json['enabledBorder'] == null
      ? null
      : PhlutsInputBorder.fromJson(
          json['enabledBorder'] as Map<String, dynamic>,
        ),
  border: json['border'] == null
      ? null
      : PhlutsInputBorder.fromJson(json['border'] as Map<String, dynamic>),
  alignLabelWithHint: json['alignLabelWithHint'] as bool?,
  constraints: json['constraints'] == null
      ? null
      : PhlutsBoxConstraints.fromJson(
          json['constraints'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PhlutsInputDecorationThemeToJson(
  PhlutsInputDecorationTheme instance,
) => <String, dynamic>{
  'labelStyle': instance.labelStyle?.toJson(),
  'floatingLabelStyle': instance.floatingLabelStyle?.toJson(),
  'helperStyle': instance.helperStyle?.toJson(),
  'helperMaxLines': instance.helperMaxLines,
  'hintStyle': instance.hintStyle?.toJson(),
  'errorStyle': instance.errorStyle?.toJson(),
  'errorMaxLines': instance.errorMaxLines,
  'floatingLabelBehavior': instance.floatingLabelBehavior,
  'floatingLabelAlignment': instance.floatingLabelAlignment,
  'isDense': instance.isDense,
  'contentPadding': instance.contentPadding?.toJson(),
  'isCollapsed': instance.isCollapsed,
  'iconColor': instance.iconColor,
  'prefixStyle': instance.prefixStyle?.toJson(),
  'prefixIconColor': instance.prefixIconColor,
  'suffixStyle': instance.suffixStyle?.toJson(),
  'suffixIconColor': instance.suffixIconColor,
  'counterStyle': instance.counterStyle?.toJson(),
  'filled': instance.filled,
  'fillColor': instance.fillColor,
  'activeIndicatorBorder': instance.activeIndicatorBorder?.toJson(),
  'outlineBorder': instance.outlineBorder?.toJson(),
  'focusColor': instance.focusColor,
  'hoverColor': instance.hoverColor,
  'errorBorder': instance.errorBorder?.toJson(),
  'focusedBorder': instance.focusedBorder?.toJson(),
  'focusedErrorBorder': instance.focusedErrorBorder?.toJson(),
  'disabledBorder': instance.disabledBorder?.toJson(),
  'enabledBorder': instance.enabledBorder?.toJson(),
  'border': instance.border?.toJson(),
  'alignLabelWithHint': instance.alignLabelWithHint,
  'constraints': instance.constraints?.toJson(),
};
