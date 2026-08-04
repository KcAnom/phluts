import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/phluts_core.dart';

part 'phluts_outlined_button.g.dart';

/// A Phluts model representing Flutter's [OutlinedButton] widget.
///
/// Represents a Material Design outlined button that responds to touches
/// by filling with color.
///
/// ```dart
/// PhlutsOutlinedButton(
///   onPressed: {'action': 'navigate', 'route': '/next'},
///   child: PhlutsText(data: 'Press me'),
///   style: PhlutsButtonStyle(elevation: 4.0),
/// )
/// ```
///
/// ```json
/// {
///   "type": "outlinedButton",
///   "child": {"type": "text", "data": "Press me"},
///   "onPressed": {"action": "navigate", "route": "/next"}
/// }
/// ```
@JsonSerializable()
class PhlutsOutlinedButton extends PhlutsWidget {
  /// Creates a [PhlutsOutlinedButton] with the given properties.
  const PhlutsOutlinedButton({
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.style,
    this.autofocus,
    this.clipBehavior,
    this.child,
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
  String get type => WidgetType.outlinedButton.name;

  /// Creates a [PhlutsOutlinedButton] from JSON.
  factory PhlutsOutlinedButton.fromJson(Map<String, dynamic> json) =>
      _$PhlutsOutlinedButtonFromJson(json);

  /// Converts this button to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsOutlinedButtonToJson(this);
}
