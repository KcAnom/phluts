// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_navigation_bar_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsNavigationBarThemeData _$PhlutsNavigationBarThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsNavigationBarThemeData(
  height: (json['height'] as num?)?.toDouble(),
  backgroundColor: json['backgroundColor'] as String?,
  elevation: (json['elevation'] as num?)?.toDouble(),
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  indicatorColor: json['indicatorColor'] as String?,
  indicatorShape: json['indicatorShape'] == null
      ? null
      : PhlutsBorder.fromJson(json['indicatorShape'] as Map<String, dynamic>),
  labelTextStyle: json['labelTextStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['labelTextStyle']),
  iconTheme: json['iconTheme'] == null
      ? null
      : PhlutsIconThemeData.fromJson(json['iconTheme'] as Map<String, dynamic>),
  labelBehavior: $enumDecodeNullable(
    _$PhlutsNavigationDestinationLabelBehaviorEnumMap,
    json['labelBehavior'],
  ),
);

Map<String, dynamic> _$PhlutsNavigationBarThemeDataToJson(
  PhlutsNavigationBarThemeData instance,
) => <String, dynamic>{
  'height': instance.height,
  'backgroundColor': instance.backgroundColor,
  'elevation': instance.elevation,
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'indicatorColor': instance.indicatorColor,
  'indicatorShape': instance.indicatorShape?.toJson(),
  'labelTextStyle': instance.labelTextStyle?.toJson(),
  'iconTheme': instance.iconTheme?.toJson(),
  'labelBehavior':
      _$PhlutsNavigationDestinationLabelBehaviorEnumMap[instance.labelBehavior],
};

const _$PhlutsNavigationDestinationLabelBehaviorEnumMap = {
  PhlutsNavigationDestinationLabelBehavior.alwaysShow: 'alwaysShow',
  PhlutsNavigationDestinationLabelBehavior.alwaysHide: 'alwaysHide',
  PhlutsNavigationDestinationLabelBehavior.onlyShowSelected: 'onlyShowSelected',
};
