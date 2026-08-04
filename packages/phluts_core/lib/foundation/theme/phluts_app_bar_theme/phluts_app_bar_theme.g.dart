// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_app_bar_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsAppBarTheme _$PhlutsAppBarThemeFromJson(
  Map<String, dynamic> json,
) => PhlutsAppBarTheme(
  backgroundColor: json['backgroundColor'] as String?,
  foregroundColor: json['foregroundColor'] as String?,
  elevation: (json['elevation'] as num?)?.toDouble(),
  scrolledUnderElevation: (json['scrolledUnderElevation'] as num?)?.toDouble(),
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  shape: json['shape'] == null
      ? null
      : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  iconTheme: json['iconTheme'] == null
      ? null
      : PhlutsIconThemeData.fromJson(json['iconTheme'] as Map<String, dynamic>),
  actionsIconTheme: json['actionsIconTheme'] == null
      ? null
      : PhlutsIconThemeData.fromJson(
          json['actionsIconTheme'] as Map<String, dynamic>,
        ),
  centerTitle: json['centerTitle'] as bool?,
  titleSpacing: (json['titleSpacing'] as num?)?.toDouble(),
  leadingWidth: (json['leadingWidth'] as num?)?.toDouble(),
  toolbarHeight: (json['toolbarHeight'] as num?)?.toDouble(),
  toolbarTextStyle: json['toolbarTextStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['toolbarTextStyle']),
  titleTextStyle: json['titleTextStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['titleTextStyle']),
  systemOverlayStyle: json['systemOverlayStyle'] == null
      ? null
      : PhlutsSystemUIOverlayStyle.fromJson(
          json['systemOverlayStyle'] as Map<String, dynamic>,
        ),
  actionsPadding: json['actionsPadding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['actionsPadding']),
);

Map<String, dynamic> _$PhlutsAppBarThemeToJson(PhlutsAppBarTheme instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'foregroundColor': instance.foregroundColor,
      'elevation': instance.elevation,
      'scrolledUnderElevation': instance.scrolledUnderElevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'shape': instance.shape?.toJson(),
      'iconTheme': instance.iconTheme?.toJson(),
      'actionsIconTheme': instance.actionsIconTheme?.toJson(),
      'centerTitle': instance.centerTitle,
      'titleSpacing': instance.titleSpacing,
      'leadingWidth': instance.leadingWidth,
      'toolbarHeight': instance.toolbarHeight,
      'toolbarTextStyle': instance.toolbarTextStyle?.toJson(),
      'titleTextStyle': instance.titleTextStyle?.toJson(),
      'systemOverlayStyle': instance.systemOverlayStyle?.toJson(),
      'actionsPadding': instance.actionsPadding?.toJson(),
    };
