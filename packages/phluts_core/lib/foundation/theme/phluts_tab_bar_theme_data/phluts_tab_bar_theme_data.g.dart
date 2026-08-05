// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_tab_bar_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsTabBarThemeData _$PhlutsTabBarThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsTabBarThemeData(
  indicator: json['indicator'] == null
      ? null
      : PhlutsBoxDecoration.fromJson(json['indicator'] as Map<String, dynamic>),
  indicatorColor: json['indicatorColor'] as String?,
  indicatorSize: $enumDecodeNullable(
    _$PhlutsTabBarIndicatorSizeEnumMap,
    json['indicatorSize'],
  ),
  dividerColor: json['dividerColor'] as String?,
  labelColor: json['labelColor'] as String?,
  labelPadding: json['labelPadding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['labelPadding']),
  labelStyle: json['labelStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['labelStyle']),
  unselectedLabelColor: json['unselectedLabelColor'] as String?,
  unselectedLabelStyle: json['unselectedLabelStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['unselectedLabelStyle']),
  overlayColor: json['overlayColor'] as String?,
);

Map<String, dynamic> _$PhlutsTabBarThemeDataToJson(
  PhlutsTabBarThemeData instance,
) => <String, dynamic>{
  'indicator': instance.indicator?.toJson(),
  'indicatorColor': instance.indicatorColor,
  'indicatorSize': _$PhlutsTabBarIndicatorSizeEnumMap[instance.indicatorSize],
  'dividerColor': instance.dividerColor,
  'labelColor': instance.labelColor,
  'labelPadding': instance.labelPadding?.toJson(),
  'labelStyle': instance.labelStyle?.toJson(),
  'unselectedLabelColor': instance.unselectedLabelColor,
  'unselectedLabelStyle': instance.unselectedLabelStyle?.toJson(),
  'overlayColor': instance.overlayColor,
};

const _$PhlutsTabBarIndicatorSizeEnumMap = {
  PhlutsTabBarIndicatorSize.tab: 'tab',
  PhlutsTabBarIndicatorSize.label: 'label',
};
