// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_navigation_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsNavigationBar _$PhlutsNavigationBarFromJson(Map<String, dynamic> json) =>
    PhlutsNavigationBar(
      destinations: (json['destinations'] as List<dynamic>)
          .map(
            (e) =>
                PhlutsNavigationDestination.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      animationDuration: json['animationDuration'] == null
          ? null
          : PhlutsDuration.fromJson(
              json['animationDuration'] as Map<String, dynamic>,
            ),
      selectedIndex: (json['selectedIndex'] as num?)?.toInt(),
      backgroundColor: json['backgroundColor'] as String?,
      elevation: const DoubleConverter().fromJson(json['elevation']),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      indicatorColor: json['indicatorColor'] as String?,
      indicatorShape: json['indicatorShape'] == null
          ? null
          : PhlutsBorder.fromJson(
              json['indicatorShape'] as Map<String, dynamic>,
            ),
      height: const DoubleConverter().fromJson(json['height']),
      labelBehavior: $enumDecodeNullable(
        _$PhlutsNavigationDestinationLabelBehaviorEnumMap,
        json['labelBehavior'],
      ),
      labelTextStyle: json['labelTextStyle'] == null
          ? null
          : PhlutsTextStyle.fromJson(json['labelTextStyle']),
      labelPadding: json['labelPadding'] == null
          ? null
          : PhlutsEdgeInsets.fromJson(json['labelPadding']),
      maintainBottomViewPadding: json['maintainBottomViewPadding'] as bool?,
    );

Map<String, dynamic> _$PhlutsNavigationBarToJson(
  PhlutsNavigationBar instance,
) => <String, dynamic>{
  'destinations': instance.destinations.map((e) => e.toJson()).toList(),
  'animationDuration': instance.animationDuration?.toJson(),
  'selectedIndex': instance.selectedIndex,
  'backgroundColor': instance.backgroundColor,
  'elevation': const DoubleConverter().toJson(instance.elevation),
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'indicatorColor': instance.indicatorColor,
  'indicatorShape': instance.indicatorShape?.toJson(),
  'height': const DoubleConverter().toJson(instance.height),
  'labelBehavior':
      _$PhlutsNavigationDestinationLabelBehaviorEnumMap[instance.labelBehavior],
  'labelTextStyle': instance.labelTextStyle?.toJson(),
  'labelPadding': instance.labelPadding?.toJson(),
  'maintainBottomViewPadding': instance.maintainBottomViewPadding,
  'type': instance.type,
};

const _$PhlutsNavigationDestinationLabelBehaviorEnumMap = {
  PhlutsNavigationDestinationLabelBehavior.alwaysShow: 'alwaysShow',
  PhlutsNavigationDestinationLabelBehavior.alwaysHide: 'alwaysHide',
  PhlutsNavigationDestinationLabelBehavior.onlyShowSelected: 'onlyShowSelected',
};
