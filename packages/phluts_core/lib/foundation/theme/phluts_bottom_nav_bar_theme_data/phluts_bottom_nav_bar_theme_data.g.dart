// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_bottom_nav_bar_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsBottomNavBarThemeData _$PhlutsBottomNavBarThemeDataFromJson(
  Map<String, dynamic> json,
) => PhlutsBottomNavBarThemeData(
  backgroundColor: json['backgroundColor'] as String?,
  elevation: (json['elevation'] as num?)?.toDouble(),
  selectedIconTheme: json['selectedIconTheme'] == null
      ? null
      : PhlutsIconThemeData.fromJson(
          json['selectedIconTheme'] as Map<String, dynamic>,
        ),
  unselectedIconTheme: json['unselectedIconTheme'] == null
      ? null
      : PhlutsIconThemeData.fromJson(
          json['unselectedIconTheme'] as Map<String, dynamic>,
        ),
  selectedItemColor: json['selectedItemColor'] as String?,
  unselectedItemColor: json['unselectedItemColor'] as String?,
  selectedLabelStyle: json['selectedLabelStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['selectedLabelStyle']),
  unselectedLabelStyle: json['unselectedLabelStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['unselectedLabelStyle']),
  showSelectedLabels: json['showSelectedLabels'] as bool?,
  showUnselectedLabels: json['showUnselectedLabels'] as bool?,
  type: $enumDecodeNullable(_$PhlutsBottomNavigationBarTypeEnumMap, json['type']),
  enableFeedback: json['enableFeedback'] as bool?,
  landscapeLayout: $enumDecodeNullable(
    _$PhlutsBottomNavigationBarLandscapeLayoutEnumMap,
    json['landscapeLayout'],
  ),
);

Map<String, dynamic> _$PhlutsBottomNavBarThemeDataToJson(
  PhlutsBottomNavBarThemeData instance,
) => <String, dynamic>{
  'backgroundColor': instance.backgroundColor,
  'elevation': instance.elevation,
  'selectedIconTheme': instance.selectedIconTheme?.toJson(),
  'unselectedIconTheme': instance.unselectedIconTheme?.toJson(),
  'selectedItemColor': instance.selectedItemColor,
  'unselectedItemColor': instance.unselectedItemColor,
  'selectedLabelStyle': instance.selectedLabelStyle?.toJson(),
  'unselectedLabelStyle': instance.unselectedLabelStyle?.toJson(),
  'showSelectedLabels': instance.showSelectedLabels,
  'showUnselectedLabels': instance.showUnselectedLabels,
  'type': _$PhlutsBottomNavigationBarTypeEnumMap[instance.type],
  'enableFeedback': instance.enableFeedback,
  'landscapeLayout':
      _$PhlutsBottomNavigationBarLandscapeLayoutEnumMap[instance.landscapeLayout],
};

const _$PhlutsBottomNavigationBarTypeEnumMap = {
  PhlutsBottomNavigationBarType.fixed: 'fixed',
  PhlutsBottomNavigationBarType.shifting: 'shifting',
};

const _$PhlutsBottomNavigationBarLandscapeLayoutEnumMap = {
  PhlutsBottomNavigationBarLandscapeLayout.spread: 'spread',
  PhlutsBottomNavigationBarLandscapeLayout.centered: 'centered',
  PhlutsBottomNavigationBarLandscapeLayout.linear: 'linear',
};
