import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/phluts_core.dart';

part 'phluts_gesture_detector.g.dart';

/// A Phluts model for a widget that detects gestures.
///
/// Attempts to recognize gestures that correspond to its non-null callbacks.
/// If this widget has a child, it defers to that child for dispatching
/// semantics announcements. If it does not have a child, it acts as a
/// leaf in the semantics tree.
///
/// Corresponds to Flutter's [GestureDetector] widget.
///
/// Example:
///
/// ```dart
/// PhlutsGestureDetector(
///   onTap: PhlutsAction(type: PhlutsActionType.debugLog, args: {'message': 'Tapped!'}),
///   child: PhlutsContainer(
///     width: 100,
///     height: 100,
///     color: '#00FF00', // Green
///     child: PhlutsCenter(child: PhlutsText('Tap Me')),
///   ),
/// )
/// ```
///
/// ```json
/// {
///   "widget": "GestureDetector",
///   "onTap": {
///     "type": "debugLog",
///     "args": {"message": "Tapped!"}
///   },
///   "child": {
///     "widget": "Container",
///     "width": 100,
///     "height": 100,
///     "color": "#00FF00",
///     "child": {
///       "widget": "Center",
///       "child": {
///         "widget": "Text",
///         "data": "Tap Me"
///       }
///     }
///   }
/// }
/// ```
///
/// See also:
///  * Flutter's [GestureDetector documentation](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html)
@JsonSerializable(explicitToJson: true)
class PhlutsGestureDetector extends PhlutsWidget {
  /// Creates a [PhlutsGestureDetector].
  ///
  /// All properties are optional. The parser will provide appropriate defaults
  /// from Flutter's [GestureDetector] if they are not specified.
  const PhlutsGestureDetector({
    this.child,
    this.onTap,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.onSecondaryTap,
    this.onSecondaryTapDown,
    this.onSecondaryTapUp,
    this.onSecondaryTapCancel,
    this.onTertiaryTapDown,
    this.onTertiaryTapUp,
    this.onTertiaryTapCancel,
    this.onDoubleTap,
    this.onDoubleTapDown,
    this.onDoubleTapCancel,
    this.onLongPress,
    this.onLongPressDown,
    this.onLongPressStart,
    this.onLongPressMoveUpdate,
    this.onLongPressUp,
    this.onLongPressEnd,
    this.onLongPressCancel,
    this.onSecondaryLongPress,
    this.onSecondaryLongPressDown,
    this.onSecondaryLongPressStart,
    this.onSecondaryLongPressMoveUpdate,
    this.onSecondaryLongPressUp,
    this.onSecondaryLongPressEnd,
    this.onSecondaryLongPressCancel,
    this.onTertiaryLongPress,
    this.onTertiaryLongPressDown,
    this.onTertiaryLongPressStart,
    this.onTertiaryLongPressMoveUpdate,
    this.onTertiaryLongPressUp,
    this.onTertiaryLongPressEnd,
    this.onTertiaryLongPressCancel,
    this.onVerticalDragDown,
    this.onVerticalDragStart,
    this.onVerticalDragUpdate,
    this.onVerticalDragEnd,
    this.onVerticalDragCancel,
    this.onHorizontalDragDown,
    this.onHorizontalDragStart,
    this.onHorizontalDragUpdate,
    this.onHorizontalDragEnd,
    this.onHorizontalDragCancel,
    this.onForcePressStart,
    this.onForcePressPeak,
    this.onForcePressUpdate,
    this.onForcePressEnd,
    this.onPanDown,
    this.onPanStart,
    this.onPanUpdate,
    this.onPanEnd,
    this.onPanCancel,
    this.onScaleStart,
    this.onScaleUpdate,
    this.onScaleEnd,
    this.behavior,
    this.excludeFromSemantics,
    this.dragStartBehavior,
  });

  /// The widget below this widget in the tree.
  final PhlutsWidget? child;

  // --- Tap Callbacks ---
  /// An action to perform when a tap has occurred.
  final PhlutsAction? onTap;

  /// An action to perform when a pointer that might cause a tap has contacted the screen.
  final PhlutsAction? onTapDown;

  /// An action to perform when a pointer that will trigger a tap has stopped contacting the screen.
  final PhlutsAction? onTapUp;

  /// An action to perform when the pointer that previously triggered [onTapDown] will not end up causing a tap.
  final PhlutsAction? onTapCancel;

  // --- Secondary Tap Callbacks ---
  /// An action to perform when a secondary tap has occurred.
  final PhlutsAction? onSecondaryTap;

  /// An action to perform when a pointer that might cause a secondary tap has contacted the screen.
  final PhlutsAction? onSecondaryTapDown;

  /// An action to perform when a pointer that will trigger a secondary tap has stopped contacting the screen.
  final PhlutsAction? onSecondaryTapUp;

  /// An action to perform when the pointer that previously triggered [onSecondaryTapDown] will not end up causing a tap.
  final PhlutsAction? onSecondaryTapCancel;

  // --- Tertiary Tap Callbacks ---
  /// An action to perform when a pointer that might cause a tertiary tap has contacted the screen.
  final PhlutsAction? onTertiaryTapDown;

  /// An action to perform when a pointer that will trigger a tertiary tap has stopped contacting the screen.
  final PhlutsAction? onTertiaryTapUp;

  /// An action to perform when the pointer that previously triggered [onTertiaryTapDown] will not end up causing a tap.
  final PhlutsAction? onTertiaryTapCancel;

  // --- Double Tap Callbacks ---
  /// An action to perform when the user has tapped the screen with a primary button at the same location twice in quick succession.
  final PhlutsAction? onDoubleTap;

  /// An action to perform when a pointer that might cause a double tap has contacted the screen at a particular location.
  final PhlutsAction? onDoubleTapDown;

  /// An action to perform when the pointer that previously triggered [onDoubleTapDown] will not end up causing a double tap.
  final PhlutsAction? onDoubleTapCancel;

  // --- Long Press Callbacks ---
  /// An action to perform when a long press gesture has been recognized.
  final PhlutsAction? onLongPress;

  /// A pointer has contacted the screen and might begin to move for a long press.
  final PhlutsAction? onLongPressDown;

  /// An action to perform when a pointer has remained in contact with the screen at the same location for a long period.
  final PhlutsAction? onLongPressStart;

  /// An action to perform when a pointer is moving after a long press gesture has been recognized.
  final PhlutsAction? onLongPressMoveUpdate;

  /// An action to perform when a pointer stops contacting the screen after a long press gesture was recognized.
  final PhlutsAction? onLongPressUp;

  /// An action to perform when a pointer stops contacting the screen after a long press gesture was recognized.
  final PhlutsAction? onLongPressEnd;

  /// Called when the pointer that previously triggered [onLongPressDown] will not end up causing a long press.
  final PhlutsAction? onLongPressCancel;

  // --- Secondary Long Press Callbacks ---
  /// An action to perform when a secondary long press gesture has been recognized.
  final PhlutsAction? onSecondaryLongPress;

  /// A pointer for a secondary button has contacted the screen and might begin to move for a long press.
  final PhlutsAction? onSecondaryLongPressDown;

  /// An action to perform when a pointer has remained in contact with the screen at the same location for a long period for a secondary button.
  final PhlutsAction? onSecondaryLongPressStart;

  /// An action to perform when a pointer is moving after a secondary long press gesture has been recognized.
  final PhlutsAction? onSecondaryLongPressMoveUpdate;

  /// An action to perform when a pointer stops contacting the screen after a secondary long press gesture was recognized.
  final PhlutsAction? onSecondaryLongPressUp;

  /// An action to perform when a pointer stops contacting the screen after a secondary long press gesture was recognized.
  final PhlutsAction? onSecondaryLongPressEnd;

  /// Called when the pointer that previously triggered [onSecondaryLongPressDown] will not end up causing a long press for a secondary button.
  final PhlutsAction? onSecondaryLongPressCancel;

  // --- Tertiary Long Press Callbacks ---
  /// An action to perform when a tertiary long press gesture has been recognized.
  final PhlutsAction? onTertiaryLongPress;

  /// A pointer for a tertiary button has contacted the screen and might begin to move for a long press.
  final PhlutsAction? onTertiaryLongPressDown;

  /// An action to perform when a pointer has remained in contact with the screen at the same location for a long period for a tertiary button.
  final PhlutsAction? onTertiaryLongPressStart;

  /// An action to perform when a pointer is moving after a tertiary long press gesture has been recognized.
  final PhlutsAction? onTertiaryLongPressMoveUpdate;

  /// An action to perform when a pointer stops contacting the screen after a tertiary long press gesture was recognized.
  final PhlutsAction? onTertiaryLongPressUp;

  /// An action to perform when a pointer stops contacting the screen after a tertiary long press gesture was recognized.
  final PhlutsAction? onTertiaryLongPressEnd;

  /// Called when the pointer that previously triggered [onTertiaryLongPressDown] will not end up causing a long press for a tertiary button.
  final PhlutsAction? onTertiaryLongPressCancel;

  // --- Vertical Drag Callbacks ---
  /// An action to perform when a pointer has contacted the screen and might begin to move vertically.
  final PhlutsAction? onVerticalDragDown;

  /// An action to perform when a pointer has contacted the screen and has begun to move vertically.
  final PhlutsAction? onVerticalDragStart;

  /// An action to perform when a pointer that is in contact with the screen and moving vertically has moved in the vertical direction.
  final PhlutsAction? onVerticalDragUpdate;

  /// An action to perform when a pointer that was previously in contact with the screen and moving vertically is no longer in contact with the screen.
  final PhlutsAction? onVerticalDragEnd;

  /// An action to perform when the pointer that previously triggered [onVerticalDragDown] did not complete.
  final PhlutsAction? onVerticalDragCancel;

  // --- Horizontal Drag Callbacks ---
  /// An action to perform when a pointer has contacted the screen and might begin to move horizontally.
  final PhlutsAction? onHorizontalDragDown;

  /// An action to perform when a pointer has contacted the screen and has begun to move horizontally.
  final PhlutsAction? onHorizontalDragStart;

  /// An action to perform when a pointer that is in contact with the screen and moving horizontally has moved in the horizontal direction.
  final PhlutsAction? onHorizontalDragUpdate;

  /// An action to perform when a pointer that was previously in contact with the screen and moving horizontally is no longer in contact with the screen.
  final PhlutsAction? onHorizontalDragEnd;

  /// An action to perform when the pointer that previously triggered [onHorizontalDragDown] did not complete.
  final PhlutsAction? onHorizontalDragCancel;

  // --- Force Press Callbacks (Note: Force touch is deprecated on iOS) ---
  /// An action to perform when a pointer has contacted the screen and has exerted a pressure sufficient to initiate a force press.
  final PhlutsAction? onForcePressStart;

  /// An action to perform when a pointer that is in contact with the screen and has exerted a pressure sufficient to initiate a force press has reached maximum pressure.
  final PhlutsAction? onForcePressPeak;

  /// An action to perform when a pointer that is in contact with the screen and has exerted a pressure sufficient to initiate a force press has most recently moved.
  final PhlutsAction? onForcePressUpdate;

  /// An action to perform when a pointer that was previously in contact with the screen and has exerted a pressure sufficient to initiate a force press is no longer in contact with the screen.
  final PhlutsAction? onForcePressEnd;

  // --- Pan Callbacks ---
  /// An action to perform when a pointer has contacted the screen and might begin to move.
  final PhlutsAction? onPanDown;

  /// An action to perform when a pointer has contacted the screen and has begun to move.
  final PhlutsAction? onPanStart;

  /// An action to perform when a pointer that is in contact with the screen and moving has moved again.
  final PhlutsAction? onPanUpdate;

  /// An action to perform when a pointer that was previously in contact with the screen and moving is no longer in contact with the screen.
  final PhlutsAction? onPanEnd;

  /// An action to perform when the pointer that previously triggered [onPanDown] did not complete.
  final PhlutsAction? onPanCancel;

  // --- Scale Callbacks ---
  /// An action to perform when the pointers in contact with the screen have established a focal point and initial scale of 1.0.
  final PhlutsAction? onScaleStart;

  /// An action to perform when the pointers in contact with the screen have indicated a new focal point and/or scale.
  final PhlutsAction? onScaleUpdate;

  /// An action to perform when the pointers are no longer in contact with the screen.
  final PhlutsAction? onScaleEnd;

  /// How this gesture detector should behave during hit testing.
  /// This defaults to [PhlutsHitTestBehavior.deferToChild] if [child] is not null and
  /// [PhlutsHitTestBehavior.translucent] if [child] is null.
  final PhlutsHitTestBehavior? behavior;

  /// Whether to exclude these gestures from the semantics tree.
  final bool? excludeFromSemantics;

  /// Determines the way that drag start behavior is handled.
  /// Defaults to [PhlutsDragStartBehavior.start].
  final PhlutsDragStartBehavior? dragStartBehavior;

  /// Widget type identifier.
  @override
  String get type => WidgetType.gestureDetector.name;

  /// Creates a [PhlutsGestureDetector] from JSON.
  factory PhlutsGestureDetector.fromJson(Map<String, dynamic> json) =>
      _$PhlutsGestureDetectorFromJson(json);

  /// Converts this PhlutsGestureDetector to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsGestureDetectorToJson(this);
}
