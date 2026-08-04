import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_text_button.g.dart';

/// A Phluts model representing Flutter's [TextButton] widget.
///
/// Represents a Material Design text button that responds to touches
/// by filling with color.
///
/// ```dart
/// PhlutsTextButton(
///   onPressed: {'action': 'navigate', 'route': '/next'},
///   child: PhlutsText(data: 'Press me'),
///   style: PhlutsButtonStyle(elevation: 4.0),
/// )
/// ```
///
/// ```json
/// {
///   "type": "textButton",
///   "child": {"type": "text", "data": "Press me"},
///   "onPressed": {"action": "navigate", "route": "/next"}
/// }
/// ```
@JsonSerializable()
class PhlutsTextButton extends PhlutsWidget {
  /// Creates a [PhlutsTextButton] with the given properties.
  const PhlutsTextButton({
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.style,
    this.autofocus,
    this.clipBehavior,
    this.isSemanticButton,
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

  /// Whether this button is a semantic button.
  final bool? isSemanticButton;

  /// The widget below this widget in the tree.
  /// Typically a [Text] widget.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.textButton.name;

  /// Creates a [PhlutsTextButton] from JSON.
  factory PhlutsTextButton.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTextButtonFromJson(json);

  /// Converts this button to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsTextButtonToJson(this);
}
