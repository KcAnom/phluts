// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_list_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsListView _$PhlutsListViewFromJson(
  Map<String, dynamic> json,
) => PhlutsListView(
  scrollDirection: $enumDecodeNullable(
    _$PhlutsAxisEnumMap,
    json['scrollDirection'],
  ),
  reverse: json['reverse'] as bool?,
  primary: json['primary'] as bool?,
  physics: $enumDecodeNullable(_$PhlutsScrollPhysicsEnumMap, json['physics']),
  shrinkWrap: json['shrinkWrap'] as bool?,
  padding: json['padding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['padding']),
  addAutomaticKeepAlives: json['addAutomaticKeepAlives'] as bool?,
  addRepaintBoundaries: json['addRepaintBoundaries'] as bool?,
  addSemanticIndexes: json['addSemanticIndexes'] as bool?,
  cacheExtent: const DoubleConverter().fromJson(json['cacheExtent']),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
  separator: json['separator'] == null
      ? null
      : PhlutsWidget.fromJson(json['separator'] as Map<String, dynamic>),
  semanticChildCount: (json['semanticChildCount'] as num?)?.toInt(),
  dragStartBehavior: $enumDecodeNullable(
    _$PhlutsDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  keyboardDismissBehavior: $enumDecodeNullable(
    _$PhlutsScrollViewKeyboardDismissBehaviorEnumMap,
    json['keyboardDismissBehavior'],
  ),
  restorationId: json['restorationId'] as String?,
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
);

Map<String, dynamic> _$PhlutsListViewToJson(PhlutsListView instance) =>
    <String, dynamic>{
      'scrollDirection': _$PhlutsAxisEnumMap[instance.scrollDirection],
      'reverse': instance.reverse,
      'primary': instance.primary,
      'physics': _$PhlutsScrollPhysicsEnumMap[instance.physics],
      'shrinkWrap': instance.shrinkWrap,
      'padding': instance.padding?.toJson(),
      'addAutomaticKeepAlives': instance.addAutomaticKeepAlives,
      'addRepaintBoundaries': instance.addRepaintBoundaries,
      'addSemanticIndexes': instance.addSemanticIndexes,
      'cacheExtent': const DoubleConverter().toJson(instance.cacheExtent),
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'separator': instance.separator?.toJson(),
      'semanticChildCount': instance.semanticChildCount,
      'dragStartBehavior':
          _$PhlutsDragStartBehaviorEnumMap[instance.dragStartBehavior],
      'keyboardDismissBehavior':
          _$PhlutsScrollViewKeyboardDismissBehaviorEnumMap[instance
              .keyboardDismissBehavior],
      'restorationId': instance.restorationId,
      'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
      'type': instance.type,
    };

const _$PhlutsAxisEnumMap = {
  PhlutsAxis.horizontal: 'horizontal',
  PhlutsAxis.vertical: 'vertical',
};

const _$PhlutsScrollPhysicsEnumMap = {
  PhlutsScrollPhysics.never: 'never',
  PhlutsScrollPhysics.bouncing: 'bouncing',
  PhlutsScrollPhysics.clamping: 'clamping',
  PhlutsScrollPhysics.fixed: 'fixed',
  PhlutsScrollPhysics.page: 'page',
};

const _$PhlutsDragStartBehaviorEnumMap = {
  PhlutsDragStartBehavior.down: 'down',
  PhlutsDragStartBehavior.start: 'start',
};

const _$PhlutsScrollViewKeyboardDismissBehaviorEnumMap = {
  PhlutsScrollViewKeyboardDismissBehavior.manual: 'manual',
  PhlutsScrollViewKeyboardDismissBehavior.onDrag: 'onDrag',
};

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
