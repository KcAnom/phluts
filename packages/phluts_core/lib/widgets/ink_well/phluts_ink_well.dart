import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_ink_well.g.dart';

/// A Phluts model representing Flutter's [InkWell] widget.
///
/// A rectangular area of a Material that responds to touch.
///
/// ```dart
/// PhlutsInkWell(
///   onTap: PhlutsAction(type: 'navigate', args: {'path': '/details'}),
///   splashColor: PhlutsColor(value: 0xFF00FF00), // Green splash
///   child: PhlutsText(data: 'Tap Me'),
///   radius: 10.0,
/// )
/// ```
///
/// ```json
/// {
///   "type": "inkWell",
///   "onTap": {"type": "navigate", "args": {"path": "/details"}},
///   "splashColor": {"value": 4278255360},
///   "child": {"type": "text", "data": "Tap Me"},
///   "radius": 10.0
/// }
/// ```
@JsonSerializable()
class PhlutsInkWell extends PhlutsWidget {
  /// Creates a [PhlutsInkWell] with the given properties.
  const PhlutsInkWell({
    this.child,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.onSecondaryTap,
    this.onSecondaryTapUp,
    this.onSecondaryTapDown,
    this.onSecondaryTapCancel,
    this.onHighlightChanged,
    this.onHover,
    this.mouseCursor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.overlayColor,
    this.splashColor,
    this.radius,
    this.borderRadius,
    this.customBorder,
    this.enableFeedback,
    this.excludeFromSemantics,
    this.canRequestFocus,
    this.onFocusChange,
    this.autofocus,
    this.hoverDuration,
  });

  /// The widget below this widget in the tree.
  final PhlutsWidget? child;

  /// Called when the user taps this part of the material.
  final PhlutsAction? onTap;

  /// Called when the user double taps this part of the material.
  final PhlutsAction? onDoubleTap;

  /// Called when the user long-presses on this part of the material.
  final PhlutsAction? onLongPress;

  /// Called when the user taps down this part of the material.
  final PhlutsAction? onTapDown;

  /// Called when the user releases a tap that was previously in contact with this part of the material.
  final PhlutsAction? onTapUp;

  /// Called when the user cancels a tap that was previously in contact with this part of the material.
  final PhlutsAction? onTapCancel;

  /// Called when the user taps the secondary button on this part of the material.
  final PhlutsAction? onSecondaryTap;

  /// Called when the user releases a secondary button tap that was previously in contact with this part of the material.
  final PhlutsAction? onSecondaryTapUp;

  /// Called when the user taps down the secondary button on this part of the material.
  final PhlutsAction? onSecondaryTapDown;

  /// Called when the user cancels a secondary button tap that was previously in contact with this part of the material.
  final PhlutsAction? onSecondaryTapCancel;

  /// Called when the highlight state of this widget changes.
  final PhlutsAction? onHighlightChanged;

  /// Called when a pointer enters or exits the ink response area.
  final PhlutsAction? onHover;

  /// The cursor for a mouse pointer when it enters or is hovering over the widget.
  final PhlutsMouseCursor? mouseCursor;

  /// The color of the ink response when the widget has input focus.
  final PhlutsColor? focusColor;

  /// The color of the ink response when a pointer is hovering over it.
  final PhlutsColor? hoverColor;

  /// The highlight color of the ink response when pressed.
  final PhlutsColor? highlightColor;

  /// The overlay color of the ink response.
  final PhlutsColor?
  overlayColor; // Note: In Flutter this is MaterialStateProperty<Color?>. PhlutsColor simplifies this for now.

  /// The splash color of the ink response.
  final PhlutsColor? splashColor;

  /// The radius of the ink splash.
  @DoubleConverter()
  final double? radius;

  /// The border radius of the containing rectangle.
  final PhlutsBorderRadius? borderRadius;

  /// The custom border to match the ink response.
  final PhlutsShapeBorder? customBorder;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  final bool? enableFeedback;

  /// Whether to exclude the gestures introduced by this widget from the semantics tree.
  final bool? excludeFromSemantics;

  /// Whether this widget can be focused.
  final bool? canRequestFocus;

  /// Handler for focus state changes.
  final PhlutsAction? onFocusChange;

  /// Whether this widget should focus itself if nothing else is already focused.
  final bool? autofocus;

  /// The duration for the hover state to be considered active.
  final PhlutsDuration? hoverDuration;

  /// Describes the type of this widget for JSON serialization.
  @override
  String get type => WidgetType.inkWell.name;

  /// Creates a [PhlutsInkWell] from a JSON map.
  factory PhlutsInkWell.fromJson(Map<String, dynamic> json) =>
      _$PhlutsInkWellFromJson(json);

  /// Converts this [PhlutsInkWell] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsInkWellToJson(this);
}
