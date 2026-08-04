// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_dialog_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDialogTheme _$PhlutsDialogThemeFromJson(Map<String, dynamic> json) =>
    PhlutsDialogTheme(
      backgroundColor: json['backgroundColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      shape: json['shape'] == null
          ? null
          : PhlutsBorder.fromJson(json['shape'] as Map<String, dynamic>),
      alignment: json['alignment'] == null
          ? null
          : PhlutsAlignmentGeometry.fromJson(
              json['alignment'] as Map<String, dynamic>,
            ),
      titleTextStyle: json['titleTextStyle'] == null
          ? null
          : PhlutsTextStyle.fromJson(json['titleTextStyle']),
      contentTextStyle: json['contentTextStyle'] == null
          ? null
          : PhlutsTextStyle.fromJson(json['contentTextStyle']),
      actionsPadding: json['actionsPadding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['actionsPadding']),
      iconColor: json['iconColor'] as String?,
    );

Map<String, dynamic> _$PhlutsDialogThemeToJson(PhlutsDialogTheme instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'shape': instance.shape?.toJson(),
      'alignment': instance.alignment?.toJson(),
      'titleTextStyle': instance.titleTextStyle?.toJson(),
      'contentTextStyle': instance.contentTextStyle?.toJson(),
      'actionsPadding': instance.actionsPadding?.toJson(),
      'iconColor': instance.iconColor,
    };
