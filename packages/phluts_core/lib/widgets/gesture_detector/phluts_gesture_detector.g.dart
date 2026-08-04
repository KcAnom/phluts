// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_gesture_detector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsGestureDetector _$PhlutsGestureDetectorFromJson(
  Map<String, dynamic> json,
) => PhlutsGestureDetector(
  child: json['child'] == null
      ? null
      : PhlutsWidget.fromJson(json['child'] as Map<String, dynamic>),
  onTap: json['onTap'] == null
      ? null
      : PhlutsAction.fromJson(json['onTap'] as Map<String, dynamic>),
  onTapDown: json['onTapDown'] == null
      ? null
      : PhlutsAction.fromJson(json['onTapDown'] as Map<String, dynamic>),
  onTapUp: json['onTapUp'] == null
      ? null
      : PhlutsAction.fromJson(json['onTapUp'] as Map<String, dynamic>),
  onTapCancel: json['onTapCancel'] == null
      ? null
      : PhlutsAction.fromJson(json['onTapCancel'] as Map<String, dynamic>),
  onSecondaryTap: json['onSecondaryTap'] == null
      ? null
      : PhlutsAction.fromJson(json['onSecondaryTap'] as Map<String, dynamic>),
  onSecondaryTapDown: json['onSecondaryTapDown'] == null
      ? null
      : PhlutsAction.fromJson(json['onSecondaryTapDown'] as Map<String, dynamic>),
  onSecondaryTapUp: json['onSecondaryTapUp'] == null
      ? null
      : PhlutsAction.fromJson(json['onSecondaryTapUp'] as Map<String, dynamic>),
  onSecondaryTapCancel: json['onSecondaryTapCancel'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onSecondaryTapCancel'] as Map<String, dynamic>,
        ),
  onTertiaryTapDown: json['onTertiaryTapDown'] == null
      ? null
      : PhlutsAction.fromJson(json['onTertiaryTapDown'] as Map<String, dynamic>),
  onTertiaryTapUp: json['onTertiaryTapUp'] == null
      ? null
      : PhlutsAction.fromJson(json['onTertiaryTapUp'] as Map<String, dynamic>),
  onTertiaryTapCancel: json['onTertiaryTapCancel'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onTertiaryTapCancel'] as Map<String, dynamic>,
        ),
  onDoubleTap: json['onDoubleTap'] == null
      ? null
      : PhlutsAction.fromJson(json['onDoubleTap'] as Map<String, dynamic>),
  onDoubleTapDown: json['onDoubleTapDown'] == null
      ? null
      : PhlutsAction.fromJson(json['onDoubleTapDown'] as Map<String, dynamic>),
  onDoubleTapCancel: json['onDoubleTapCancel'] == null
      ? null
      : PhlutsAction.fromJson(json['onDoubleTapCancel'] as Map<String, dynamic>),
  onLongPress: json['onLongPress'] == null
      ? null
      : PhlutsAction.fromJson(json['onLongPress'] as Map<String, dynamic>),
  onLongPressDown: json['onLongPressDown'] == null
      ? null
      : PhlutsAction.fromJson(json['onLongPressDown'] as Map<String, dynamic>),
  onLongPressStart: json['onLongPressStart'] == null
      ? null
      : PhlutsAction.fromJson(json['onLongPressStart'] as Map<String, dynamic>),
  onLongPressMoveUpdate: json['onLongPressMoveUpdate'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onLongPressMoveUpdate'] as Map<String, dynamic>,
        ),
  onLongPressUp: json['onLongPressUp'] == null
      ? null
      : PhlutsAction.fromJson(json['onLongPressUp'] as Map<String, dynamic>),
  onLongPressEnd: json['onLongPressEnd'] == null
      ? null
      : PhlutsAction.fromJson(json['onLongPressEnd'] as Map<String, dynamic>),
  onLongPressCancel: json['onLongPressCancel'] == null
      ? null
      : PhlutsAction.fromJson(json['onLongPressCancel'] as Map<String, dynamic>),
  onSecondaryLongPress: json['onSecondaryLongPress'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onSecondaryLongPress'] as Map<String, dynamic>,
        ),
  onSecondaryLongPressDown: json['onSecondaryLongPressDown'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onSecondaryLongPressDown'] as Map<String, dynamic>,
        ),
  onSecondaryLongPressStart: json['onSecondaryLongPressStart'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onSecondaryLongPressStart'] as Map<String, dynamic>,
        ),
  onSecondaryLongPressMoveUpdate: json['onSecondaryLongPressMoveUpdate'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onSecondaryLongPressMoveUpdate'] as Map<String, dynamic>,
        ),
  onSecondaryLongPressUp: json['onSecondaryLongPressUp'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onSecondaryLongPressUp'] as Map<String, dynamic>,
        ),
  onSecondaryLongPressEnd: json['onSecondaryLongPressEnd'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onSecondaryLongPressEnd'] as Map<String, dynamic>,
        ),
  onSecondaryLongPressCancel: json['onSecondaryLongPressCancel'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onSecondaryLongPressCancel'] as Map<String, dynamic>,
        ),
  onTertiaryLongPress: json['onTertiaryLongPress'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onTertiaryLongPress'] as Map<String, dynamic>,
        ),
  onTertiaryLongPressDown: json['onTertiaryLongPressDown'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onTertiaryLongPressDown'] as Map<String, dynamic>,
        ),
  onTertiaryLongPressStart: json['onTertiaryLongPressStart'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onTertiaryLongPressStart'] as Map<String, dynamic>,
        ),
  onTertiaryLongPressMoveUpdate: json['onTertiaryLongPressMoveUpdate'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onTertiaryLongPressMoveUpdate'] as Map<String, dynamic>,
        ),
  onTertiaryLongPressUp: json['onTertiaryLongPressUp'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onTertiaryLongPressUp'] as Map<String, dynamic>,
        ),
  onTertiaryLongPressEnd: json['onTertiaryLongPressEnd'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onTertiaryLongPressEnd'] as Map<String, dynamic>,
        ),
  onTertiaryLongPressCancel: json['onTertiaryLongPressCancel'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onTertiaryLongPressCancel'] as Map<String, dynamic>,
        ),
  onVerticalDragDown: json['onVerticalDragDown'] == null
      ? null
      : PhlutsAction.fromJson(json['onVerticalDragDown'] as Map<String, dynamic>),
  onVerticalDragStart: json['onVerticalDragStart'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onVerticalDragStart'] as Map<String, dynamic>,
        ),
  onVerticalDragUpdate: json['onVerticalDragUpdate'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onVerticalDragUpdate'] as Map<String, dynamic>,
        ),
  onVerticalDragEnd: json['onVerticalDragEnd'] == null
      ? null
      : PhlutsAction.fromJson(json['onVerticalDragEnd'] as Map<String, dynamic>),
  onVerticalDragCancel: json['onVerticalDragCancel'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onVerticalDragCancel'] as Map<String, dynamic>,
        ),
  onHorizontalDragDown: json['onHorizontalDragDown'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onHorizontalDragDown'] as Map<String, dynamic>,
        ),
  onHorizontalDragStart: json['onHorizontalDragStart'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onHorizontalDragStart'] as Map<String, dynamic>,
        ),
  onHorizontalDragUpdate: json['onHorizontalDragUpdate'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onHorizontalDragUpdate'] as Map<String, dynamic>,
        ),
  onHorizontalDragEnd: json['onHorizontalDragEnd'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onHorizontalDragEnd'] as Map<String, dynamic>,
        ),
  onHorizontalDragCancel: json['onHorizontalDragCancel'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onHorizontalDragCancel'] as Map<String, dynamic>,
        ),
  onForcePressStart: json['onForcePressStart'] == null
      ? null
      : PhlutsAction.fromJson(json['onForcePressStart'] as Map<String, dynamic>),
  onForcePressPeak: json['onForcePressPeak'] == null
      ? null
      : PhlutsAction.fromJson(json['onForcePressPeak'] as Map<String, dynamic>),
  onForcePressUpdate: json['onForcePressUpdate'] == null
      ? null
      : PhlutsAction.fromJson(json['onForcePressUpdate'] as Map<String, dynamic>),
  onForcePressEnd: json['onForcePressEnd'] == null
      ? null
      : PhlutsAction.fromJson(json['onForcePressEnd'] as Map<String, dynamic>),
  onPanDown: json['onPanDown'] == null
      ? null
      : PhlutsAction.fromJson(json['onPanDown'] as Map<String, dynamic>),
  onPanStart: json['onPanStart'] == null
      ? null
      : PhlutsAction.fromJson(json['onPanStart'] as Map<String, dynamic>),
  onPanUpdate: json['onPanUpdate'] == null
      ? null
      : PhlutsAction.fromJson(json['onPanUpdate'] as Map<String, dynamic>),
  onPanEnd: json['onPanEnd'] == null
      ? null
      : PhlutsAction.fromJson(json['onPanEnd'] as Map<String, dynamic>),
  onPanCancel: json['onPanCancel'] == null
      ? null
      : PhlutsAction.fromJson(json['onPanCancel'] as Map<String, dynamic>),
  onScaleStart: json['onScaleStart'] == null
      ? null
      : PhlutsAction.fromJson(json['onScaleStart'] as Map<String, dynamic>),
  onScaleUpdate: json['onScaleUpdate'] == null
      ? null
      : PhlutsAction.fromJson(json['onScaleUpdate'] as Map<String, dynamic>),
  onScaleEnd: json['onScaleEnd'] == null
      ? null
      : PhlutsAction.fromJson(json['onScaleEnd'] as Map<String, dynamic>),
  behavior: $enumDecodeNullable(_$PhlutsHitTestBehaviorEnumMap, json['behavior']),
  excludeFromSemantics: json['excludeFromSemantics'] as bool?,
  dragStartBehavior: $enumDecodeNullable(
    _$PhlutsDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
);

Map<String, dynamic> _$PhlutsGestureDetectorToJson(
  PhlutsGestureDetector instance,
) => <String, dynamic>{
  'child': instance.child?.toJson(),
  'onTap': instance.onTap?.toJson(),
  'onTapDown': instance.onTapDown?.toJson(),
  'onTapUp': instance.onTapUp?.toJson(),
  'onTapCancel': instance.onTapCancel?.toJson(),
  'onSecondaryTap': instance.onSecondaryTap?.toJson(),
  'onSecondaryTapDown': instance.onSecondaryTapDown?.toJson(),
  'onSecondaryTapUp': instance.onSecondaryTapUp?.toJson(),
  'onSecondaryTapCancel': instance.onSecondaryTapCancel?.toJson(),
  'onTertiaryTapDown': instance.onTertiaryTapDown?.toJson(),
  'onTertiaryTapUp': instance.onTertiaryTapUp?.toJson(),
  'onTertiaryTapCancel': instance.onTertiaryTapCancel?.toJson(),
  'onDoubleTap': instance.onDoubleTap?.toJson(),
  'onDoubleTapDown': instance.onDoubleTapDown?.toJson(),
  'onDoubleTapCancel': instance.onDoubleTapCancel?.toJson(),
  'onLongPress': instance.onLongPress?.toJson(),
  'onLongPressDown': instance.onLongPressDown?.toJson(),
  'onLongPressStart': instance.onLongPressStart?.toJson(),
  'onLongPressMoveUpdate': instance.onLongPressMoveUpdate?.toJson(),
  'onLongPressUp': instance.onLongPressUp?.toJson(),
  'onLongPressEnd': instance.onLongPressEnd?.toJson(),
  'onLongPressCancel': instance.onLongPressCancel?.toJson(),
  'onSecondaryLongPress': instance.onSecondaryLongPress?.toJson(),
  'onSecondaryLongPressDown': instance.onSecondaryLongPressDown?.toJson(),
  'onSecondaryLongPressStart': instance.onSecondaryLongPressStart?.toJson(),
  'onSecondaryLongPressMoveUpdate': instance.onSecondaryLongPressMoveUpdate
      ?.toJson(),
  'onSecondaryLongPressUp': instance.onSecondaryLongPressUp?.toJson(),
  'onSecondaryLongPressEnd': instance.onSecondaryLongPressEnd?.toJson(),
  'onSecondaryLongPressCancel': instance.onSecondaryLongPressCancel?.toJson(),
  'onTertiaryLongPress': instance.onTertiaryLongPress?.toJson(),
  'onTertiaryLongPressDown': instance.onTertiaryLongPressDown?.toJson(),
  'onTertiaryLongPressStart': instance.onTertiaryLongPressStart?.toJson(),
  'onTertiaryLongPressMoveUpdate': instance.onTertiaryLongPressMoveUpdate
      ?.toJson(),
  'onTertiaryLongPressUp': instance.onTertiaryLongPressUp?.toJson(),
  'onTertiaryLongPressEnd': instance.onTertiaryLongPressEnd?.toJson(),
  'onTertiaryLongPressCancel': instance.onTertiaryLongPressCancel?.toJson(),
  'onVerticalDragDown': instance.onVerticalDragDown?.toJson(),
  'onVerticalDragStart': instance.onVerticalDragStart?.toJson(),
  'onVerticalDragUpdate': instance.onVerticalDragUpdate?.toJson(),
  'onVerticalDragEnd': instance.onVerticalDragEnd?.toJson(),
  'onVerticalDragCancel': instance.onVerticalDragCancel?.toJson(),
  'onHorizontalDragDown': instance.onHorizontalDragDown?.toJson(),
  'onHorizontalDragStart': instance.onHorizontalDragStart?.toJson(),
  'onHorizontalDragUpdate': instance.onHorizontalDragUpdate?.toJson(),
  'onHorizontalDragEnd': instance.onHorizontalDragEnd?.toJson(),
  'onHorizontalDragCancel': instance.onHorizontalDragCancel?.toJson(),
  'onForcePressStart': instance.onForcePressStart?.toJson(),
  'onForcePressPeak': instance.onForcePressPeak?.toJson(),
  'onForcePressUpdate': instance.onForcePressUpdate?.toJson(),
  'onForcePressEnd': instance.onForcePressEnd?.toJson(),
  'onPanDown': instance.onPanDown?.toJson(),
  'onPanStart': instance.onPanStart?.toJson(),
  'onPanUpdate': instance.onPanUpdate?.toJson(),
  'onPanEnd': instance.onPanEnd?.toJson(),
  'onPanCancel': instance.onPanCancel?.toJson(),
  'onScaleStart': instance.onScaleStart?.toJson(),
  'onScaleUpdate': instance.onScaleUpdate?.toJson(),
  'onScaleEnd': instance.onScaleEnd?.toJson(),
  'behavior': _$PhlutsHitTestBehaviorEnumMap[instance.behavior],
  'excludeFromSemantics': instance.excludeFromSemantics,
  'dragStartBehavior':
      _$PhlutsDragStartBehaviorEnumMap[instance.dragStartBehavior],
  'type': instance.type,
};

const _$PhlutsHitTestBehaviorEnumMap = {
  PhlutsHitTestBehavior.deferToChild: 'deferToChild',
  PhlutsHitTestBehavior.opaque: 'opaque',
  PhlutsHitTestBehavior.translucent: 'translucent',
};

const _$PhlutsDragStartBehaviorEnumMap = {
  PhlutsDragStartBehavior.down: 'down',
  PhlutsDragStartBehavior.start: 'start',
};
