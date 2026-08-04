// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_bottom_navigation_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsBottomNavigationBar _$PhlutsBottomNavigationBarFromJson(
  Map<String, dynamic> json,
) => PhlutsBottomNavigationBar(
  items: (json['items'] as List<dynamic>)
      .map(
        (e) => PhlutsBottomNavigationBarItem.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  elevation: const DoubleConverter().fromJson(json['elevation']),
  barType: $enumDecodeNullable(
    _$PhlutsBottomNavigationBarTypeEnumMap,
    json['barType'],
  ),
  fixedColor: json['fixedColor'] as String?,
  backgroundColor: json['backgroundColor'] as String?,
  iconSize: const DoubleConverter().fromJson(json['iconSize']),
  selectedItemColor: json['selectedItemColor'] as String?,
  unselectedItemColor: json['unselectedItemColor'] as String?,
  selectedFontSize: const DoubleConverter().fromJson(json['selectedFontSize']),
  unselectedFontSize: const DoubleConverter().fromJson(
    json['unselectedFontSize'],
  ),
  selectedLabelStyle: json['selectedLabelStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['selectedLabelStyle']),
  unselectedLabelStyle: json['unselectedLabelStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['unselectedLabelStyle']),
  showSelectedLabels: json['showSelectedLabels'] as bool?,
  showUnselectedLabels: json['showUnselectedLabels'] as bool?,
  enableFeedback: json['enableFeedback'] as bool?,
  landscapeLayout: $enumDecodeNullable(
    _$PhlutsBottomNavigationBarLandscapeLayoutEnumMap,
    json['landscapeLayout'],
  ),
);

Map<String, dynamic> _$PhlutsBottomNavigationBarToJson(
  PhlutsBottomNavigationBar instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'elevation': const DoubleConverter().toJson(instance.elevation),
  'barType': _$PhlutsBottomNavigationBarTypeEnumMap[instance.barType],
  'fixedColor': instance.fixedColor,
  'backgroundColor': instance.backgroundColor,
  'iconSize': const DoubleConverter().toJson(instance.iconSize),
  'selectedItemColor': instance.selectedItemColor,
  'unselectedItemColor': instance.unselectedItemColor,
  'selectedFontSize': const DoubleConverter().toJson(instance.selectedFontSize),
  'unselectedFontSize': const DoubleConverter().toJson(
    instance.unselectedFontSize,
  ),
  'selectedLabelStyle': instance.selectedLabelStyle?.toJson(),
  'unselectedLabelStyle': instance.unselectedLabelStyle?.toJson(),
  'showSelectedLabels': instance.showSelectedLabels,
  'showUnselectedLabels': instance.showUnselectedLabels,
  'enableFeedback': instance.enableFeedback,
  'landscapeLayout':
      _$PhlutsBottomNavigationBarLandscapeLayoutEnumMap[instance.landscapeLayout],
  'type': instance.type,
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
