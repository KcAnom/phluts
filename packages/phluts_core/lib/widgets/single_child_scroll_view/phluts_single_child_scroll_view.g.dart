// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_single_child_scroll_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsSingleChildScrollView _$PhlutsSingleChildScrollViewFromJson(
  Map<String, dynamic> json,
) => PhlutsSingleChildScrollView(
  scrollDirection: $enumDecodeNullable(
    _$PhlutsAxisEnumMap,
    json['scrollDirection'],
  ),
  reverse: json['reverse'] as bool?,
  padding: json['padding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['padding']),
  primary: json['primary'] as bool?,
  physics: $enumDecodeNullable(_$PhlutsScrollPhysicsEnumMap, json['physics']),
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
  dragStartBehavior: $enumDecodeNullable(
    _$PhlutsDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
  restorationId: json['restorationId'] as String?,
  keyboardDismissBehavior: $enumDecodeNullable(
    _$PhlutsScrollViewKeyboardDismissBehaviorEnumMap,
    json['keyboardDismissBehavior'],
  ),
);

Map<String, dynamic> _$PhlutsSingleChildScrollViewToJson(
  PhlutsSingleChildScrollView instance,
) => <String, dynamic>{
  'scrollDirection': _$PhlutsAxisEnumMap[instance.scrollDirection],
  'reverse': instance.reverse,
  'padding': instance.padding?.toJson(),
  'primary': instance.primary,
  'physics': _$PhlutsScrollPhysicsEnumMap[instance.physics],
  'child': instance.child?.toJson(),
  'dragStartBehavior':
      _$PhlutsDragStartBehaviorEnumMap[instance.dragStartBehavior],
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
  'restorationId': instance.restorationId,
  'keyboardDismissBehavior':
      _$PhlutsScrollViewKeyboardDismissBehaviorEnumMap[instance
          .keyboardDismissBehavior],
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

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};

const _$PhlutsScrollViewKeyboardDismissBehaviorEnumMap = {
  PhlutsScrollViewKeyboardDismissBehavior.manual: 'manual',
  PhlutsScrollViewKeyboardDismissBehavior.onDrag: 'onDrag',
};
