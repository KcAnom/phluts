// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_tab_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsTabBar _$PhlutsTabBarFromJson(Map<String, dynamic> json) => PhlutsTabBar(
  tabs: (json['tabs'] as List<dynamic>)
      .map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
  initialIndex: (json['initialIndex'] as num?)?.toInt(),
  isScrollable: json['isScrollable'] as bool?,
  padding: json['padding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['padding']),
  indicatorColor: json['indicatorColor'] as String?,
  automaticIndicatorColorAdjustment:
      json['automaticIndicatorColorAdjustment'] as bool?,
  indicatorWeight: const DoubleConverter().fromJson(json['indicatorWeight']),
  indicatorPadding: json['indicatorPadding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['indicatorPadding']),
  indicator: json['indicator'] == null
      ? null
      : PhlutsBoxDecoration.fromJson(json['indicator'] as Map<String, dynamic>),
  indicatorSize: $enumDecodeNullable(
    _$PhlutsTabBarIndicatorSizeEnumMap,
    json['indicatorSize'],
  ),
  labelColor: json['labelColor'] as String?,
  labelStyle: json['labelStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['labelStyle']),
  labelPadding: json['labelPadding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['labelPadding']),
  unselectedLabelColor: json['unselectedLabelColor'] as String?,
  unselectedLabelStyle: json['unselectedLabelStyle'] == null
      ? null
      : PhlutsTextStyle.fromJson(json['unselectedLabelStyle']),
  dragStartBehavior: $enumDecodeNullable(
    _$PhlutsDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  enableFeedback: json['enableFeedback'] as bool?,
  physics: $enumDecodeNullable(_$PhlutsScrollPhysicsEnumMap, json['physics']),
  tabAlignment: $enumDecodeNullable(
    _$PhlutsTabAlignmentEnumMap,
    json['tabAlignment'],
  ),
  dividerColor: json['dividerColor'] as String?,
  dividerHeight: const DoubleConverter().fromJson(json['dividerHeight']),
);

Map<String, dynamic> _$PhlutsTabBarToJson(
  PhlutsTabBar instance,
) => <String, dynamic>{
  'tabs': instance.tabs.map((e) => e.toJson()).toList(),
  'initialIndex': instance.initialIndex,
  'isScrollable': instance.isScrollable,
  'padding': instance.padding?.toJson(),
  'indicatorColor': instance.indicatorColor,
  'automaticIndicatorColorAdjustment':
      instance.automaticIndicatorColorAdjustment,
  'indicatorWeight': const DoubleConverter().toJson(instance.indicatorWeight),
  'indicatorPadding': instance.indicatorPadding?.toJson(),
  'indicator': instance.indicator?.toJson(),
  'indicatorSize': _$PhlutsTabBarIndicatorSizeEnumMap[instance.indicatorSize],
  'labelColor': instance.labelColor,
  'labelStyle': instance.labelStyle?.toJson(),
  'labelPadding': instance.labelPadding?.toJson(),
  'unselectedLabelColor': instance.unselectedLabelColor,
  'unselectedLabelStyle': instance.unselectedLabelStyle?.toJson(),
  'dragStartBehavior':
      _$PhlutsDragStartBehaviorEnumMap[instance.dragStartBehavior],
  'enableFeedback': instance.enableFeedback,
  'physics': _$PhlutsScrollPhysicsEnumMap[instance.physics],
  'tabAlignment': _$PhlutsTabAlignmentEnumMap[instance.tabAlignment],
  'dividerColor': instance.dividerColor,
  'dividerHeight': const DoubleConverter().toJson(instance.dividerHeight),
  'type': instance.type,
};

const _$PhlutsTabBarIndicatorSizeEnumMap = {
  PhlutsTabBarIndicatorSize.tab: 'tab',
  PhlutsTabBarIndicatorSize.label: 'label',
};

const _$PhlutsDragStartBehaviorEnumMap = {
  PhlutsDragStartBehavior.down: 'down',
  PhlutsDragStartBehavior.start: 'start',
};

const _$PhlutsScrollPhysicsEnumMap = {
  PhlutsScrollPhysics.never: 'never',
  PhlutsScrollPhysics.bouncing: 'bouncing',
  PhlutsScrollPhysics.clamping: 'clamping',
  PhlutsScrollPhysics.fixed: 'fixed',
  PhlutsScrollPhysics.page: 'page',
};

const _$PhlutsTabAlignmentEnumMap = {
  PhlutsTabAlignment.start: 'start',
  PhlutsTabAlignment.startOffset: 'startOffset',
  PhlutsTabAlignment.fill: 'fill',
  PhlutsTabAlignment.center: 'center',
};
