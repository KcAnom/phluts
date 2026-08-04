import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_elevated_button.g.dart';

/// A Phluts model representing Flutter's [ElevatedButton] widget.
///
/// Represents a Material Design elevated button that responds to touches
/// by elevating and filling with color.
///
/// ```dart
/// PhlutsElevatedButton(
///   onPressed: {'action': 'navigate', 'route': '/next'},
///   child: PhlutsText(data: 'Press me'),
///   style: PhlutsButtonStyle(elevation: 4.0),
/// )
/// ```
///
/// ```json
/// {
///   "type": "elevatedButton",
///   "child": {"type": "text", "data": "Press me"},
///   "onPressed": {"action": "navigate", "route": "/next"}
/// }
/// ```
@JsonSerializable()
class PhlutsElevatedButton extends PhlutsWidget {
  /// Creates a [PhlutsElevatedButton] with the given properties.
  const PhlutsElevatedButton({
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.style,
    this.autofocus,
    this.clipBehavior,
    required this.child,
  });

  /// Called when the button is tapped or otherwise activated.
  /// If null, the button will be disabled.
  final PhlutsAction? onPressed;

  /// Called when the button is long-pressed.
  final PhlutsAction? onLongPress;

  /// Called when a pointer enters or exits the button response area.
  final PhlutsAction? onHover;

  /// Called when the focus changes.
  final PhlutsAction? onFocusChange;

  /// Customizes this button's appearance.
  final PhlutsButtonStyle? style;

  /// True if this widget will be selected as the initial focus when no other
  /// node in its scope is currently focused.
  final bool? autofocus;

  /// How to clip the button's content.
  final PhlutsClip? clipBehavior;

  /// The widget below this widget in the tree.
  /// Typically a [Text] widget.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.elevatedButton.name;

  /// Creates a [PhlutsElevatedButton] from JSON.
  factory PhlutsElevatedButton.fromJson(Map<String, dynamic> json) =>
      _$PhlutsElevatedButtonFromJson(json);

  /// Converts this button to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsElevatedButtonToJson(this);
}
