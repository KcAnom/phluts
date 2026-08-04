// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_custom_scroll_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsCustomScrollView _$PhlutsCustomScrollViewFromJson(
  Map<String, dynamic> json,
) => PhlutsCustomScrollView(
  slivers: (json['slivers'] as List<dynamic>?)
      ?.map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
  scrollDirection: $enumDecodeNullable(
    _$PhlutsAxisEnumMap,
    json['scrollDirection'],
  ),
  reverse: json['reverse'] as bool?,
  primary: json['primary'] as bool?,
  physics: $enumDecodeNullable(_$PhlutsScrollPhysicsEnumMap, json['physics']),
  shrinkWrap: json['shrinkWrap'] as bool?,
  anchor: const DoubleConverter().fromJson(json['anchor']),
  cacheExtent: const DoubleConverter().fromJson(json['cacheExtent']),
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
  hitTestBehavior: $enumDecodeNullable(
    _$PhlutsHitTestBehaviorEnumMap,
    json['hitTestBehavior'],
  ),
);

Map<String, dynamic> _$PhlutsCustomScrollViewToJson(
  PhlutsCustomScrollView instance,
) => <String, dynamic>{
  'slivers': instance.slivers?.map((e) => e.toJson()).toList(),
  'scrollDirection': _$PhlutsAxisEnumMap[instance.scrollDirection],
  'reverse': instance.reverse,
  'primary': instance.primary,
  'physics': _$PhlutsScrollPhysicsEnumMap[instance.physics],
  'shrinkWrap': instance.shrinkWrap,
  'anchor': const DoubleConverter().toJson(instance.anchor),
  'cacheExtent': const DoubleConverter().toJson(instance.cacheExtent),
  'semanticChildCount': instance.semanticChildCount,
  'dragStartBehavior':
      _$PhlutsDragStartBehaviorEnumMap[instance.dragStartBehavior],
  'keyboardDismissBehavior':
      _$PhlutsScrollViewKeyboardDismissBehaviorEnumMap[instance
          .keyboardDismissBehavior],
  'restorationId': instance.restorationId,
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
  'hitTestBehavior': _$PhlutsHitTestBehaviorEnumMap[instance.hitTestBehavior],
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

const _$PhlutsHitTestBehaviorEnumMap = {
  PhlutsHitTestBehavior.deferToChild: 'deferToChild',
  PhlutsHitTestBehavior.opaque: 'opaque',
  PhlutsHitTestBehavior.translucent: 'translucent',
};
