// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_snack_bar_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSnackBarThemeData _$PhlutsSnackBarThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsSnackBarThemeData(
  behavior: $enumDecodeNullable(
    _$PhlutsSnackBarBehaviorEnumMap,
    json['behavior'],
  ),
  backgroundColor: json['backgroundColor'] as String?,
  elevation: (json['elevation'] as num?)?.toDouble(),
  shape: json['shape'] == null
      ? null
      : PhlutsShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  width: (json['width'] as num?)?.toDouble(),
  contentTextStyle: json['contentTextStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['contentTextStyle']),
  actionTextColor: json['actionTextColor'] as String?,
  disabledActionTextColor: json['disabledActionTextColor'] as String?,
  insetPadding: json['insetPadding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['insetPadding']),
  dismissDirection: $enumDecodeNullable(
    _$PhlutsDismissDirectionEnumMap,
    json['dismissDirection'],
  ),
  showCloseIcon: json['showCloseIcon'] as bool?,
  closeIconColor: json['closeIconColor'] as String?,
  actionOverflowThreshold: (json['actionOverflowThreshold'] as num?)
      ?.toDouble(),
  actionBackgroundColor: json['actionBackgroundColor'] as String?,
  disabledActionBackgroundColor:
      json['disabledActionBackgroundColor'] as String?,
);

Map<String, dynamic> _$PhlutsSnackBarThemeDataToJson(
  PhlutsSnackBarThemeData instance,
) => <String, dynamic>{
  'behavior': _$PhlutsSnackBarBehaviorEnumMap[instance.behavior],
  'backgroundColor': instance.backgroundColor,
  'elevation': instance.elevation,
  'shape': instance.shape?.toJson(),
  'width': instance.width,
  'contentTextStyle': instance.contentTextStyle?.toJson(),
  'actionTextColor': instance.actionTextColor,
  'disabledActionTextColor': instance.disabledActionTextColor,
  'insetPadding': instance.insetPadding?.toJson(),
  'dismissDirection': _$PhlutsDismissDirectionEnumMap[instance.dismissDirection],
  'showCloseIcon': instance.showCloseIcon,
  'closeIconColor': instance.closeIconColor,
  'actionOverflowThreshold': instance.actionOverflowThreshold,
  'actionBackgroundColor': instance.actionBackgroundColor,
  'disabledActionBackgroundColor': instance.disabledActionBackgroundColor,
};

const _$PhlutsSnackBarBehaviorEnumMap = {
  PhlutsSnackBarBehavior.fixed: 'fixed',
  PhlutsSnackBarBehavior.floating: 'floating',
};

const _$PhlutsDismissDirectionEnumMap = {
  PhlutsDismissDirection.horizontal: 'horizontal',
  PhlutsDismissDirection.vertical: 'vertical',
  PhlutsDismissDirection.down: 'down',
  PhlutsDismissDirection.up: 'up',
  PhlutsDismissDirection.endToStart: 'endToStart',
  PhlutsDismissDirection.startToEnd: 'startToEnd',
};
