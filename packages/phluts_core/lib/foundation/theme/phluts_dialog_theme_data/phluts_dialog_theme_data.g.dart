// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_dialog_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsDialogThemeData _$PhlutsDialogThemeDataFromJson(Map<String, dynamic> json) =>
    PhlutsDialogThemeData(
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
      iconColor: json['iconColor'] as String?,
      titleTextStyle: json['titleTextStyle'] == null
          ? null
          : PhlutsTextStyle.fromJson(json['titleTextStyle']),
      contentTextStyle: json['contentTextStyle'] == null
          ? null
          : PhlutsTextStyle.fromJson(json['contentTextStyle']),
      actionsPadding: json['actionsPadding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['actionsPadding']),
      barrierColor: json['barrierColor'] as String?,
      insetPadding: json['insetPadding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['insetPadding']),
      clipBehavior: $enumDecodeNullable(
        _$PhlutsClipEnumMap,
        json['clipBehavior'],
      ),
      constraints: json['constraints'] == null
          ? null
          : PhlutsBoxConstraints.fromJson(
              json['constraints'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$PhlutsDialogThemeDataToJson(
  PhlutsDialogThemeData instance,
) => <String, dynamic>{
  'backgroundColor': instance.backgroundColor,
  'elevation': instance.elevation,
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'shape': instance.shape?.toJson(),
  'alignment': instance.alignment?.toJson(),
  'iconColor': instance.iconColor,
  'titleTextStyle': instance.titleTextStyle?.toJson(),
  'contentTextStyle': instance.contentTextStyle?.toJson(),
  'actionsPadding': instance.actionsPadding?.toJson(),
  'barrierColor': instance.barrierColor,
  'insetPadding': instance.insetPadding?.toJson(),
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
  'constraints': instance.constraints?.toJson(),
};

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
