// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_tab_bar_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsTabBarView _$PhlutsTabBarViewFromJson(
  Map<String, dynamic> json,
) => PhlutsTabBarView(
  children: (json['children'] as List<dynamic>)
      .map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
  dragStartBehavior: $enumDecodeNullable(
    _$PhlutsDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  physics: $enumDecodeNullable(_$PhlutsScrollPhysicsEnumMap, json['physics']),
  viewportFraction: const DoubleConverter().fromJson(json['viewportFraction']),
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
);

Map<String, dynamic> _$PhlutsTabBarViewToJson(
  PhlutsTabBarView instance,
) => <String, dynamic>{
  'children': instance.children.map((e) => e.toJson()).toList(),
  'dragStartBehavior':
      _$PhlutsDragStartBehaviorEnumMap[instance.dragStartBehavior],
  'physics': _$PhlutsScrollPhysicsEnumMap[instance.physics],
  'viewportFraction': const DoubleConverter().toJson(instance.viewportFraction),
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
  'type': instance.type,
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

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
