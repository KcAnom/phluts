import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_floating_action_button.g.dart';

/// A Phluts model representing Flutter's [FloatingActionButton] widget.
///
/// Represents a Material Design floating action button that floats above
/// the content and responds to touches.
///
/// ```dart
/// PhlutsFloatingActionButton(
///   onPressed: {'action': 'navigate', 'route': '/next'},
///   child: PhlutsIcon(icon: 'add'),
///   backgroundColor: '#FF5722',
/// )
/// ```
///
/// ```json
/// {
///   "type": "floatingActionButton",
///   "child": {"type": "icon", "icon": "add"},
///   "onPressed": {"action": "navigate", "route": "/next"},
///   "backgroundColor": "#FF5722"
/// }
/// ```
@JsonSerializable()
class PhlutsFloatingActionButton extends PhlutsWidget {
  /// Creates a [PhlutsFloatingActionButton] with the given properties.
  const PhlutsFloatingActionButton({
    this.onPressed,
    this.textStyle,
    this.buttonType = PhlutsFloatingActionButtonType.small,
    this.autofocus,
    this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.extendedTextStyle,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.disabledElevation,
    this.highlightElevation,
    this.extendedIconLabelSpacing,
    this.enableFeedback,
    this.tooltip,
    this.heroTag,
    this.child,
  });

  /// Called when the button is tapped or otherwise activated.
  /// If null, the button will be disabled.
  final PhlutsAction? onPressed;

  /// The text style for the button's text.
  final PhlutsTextStyle? textStyle;

  /// The type of floating action button.
  final PhlutsFloatingActionButtonType buttonType;

  /// True if this widget will be selected as the initial focus when no other
  /// node in its scope is currently focused.
  final bool? autofocus;

  /// The icon to display in the button.
  final PhlutsWidget? icon;

  /// The background color of the button.
  final String? backgroundColor;

  /// The foreground color of the button.
  final String? foregroundColor;

  /// The focus color of the button.
  final String? focusColor;

  /// The hover color of the button.
  final String? hoverColor;

  /// The splash color of the button.
  final String? splashColor;

  /// The text style for extended floating action button text.
  final PhlutsTextStyle? extendedTextStyle;

  /// The elevation of the button.
  final double? elevation;

  /// The elevation when the button is focused.
  final double? focusElevation;

  /// The elevation when the button is hovered.
  final double? hoverElevation;

  /// The elevation when the button is disabled.
  final double? disabledElevation;

  /// The elevation when the button is highlighted.
  final double? highlightElevation;

  /// The spacing between icon and label in extended floating action button.
  final double? extendedIconLabelSpacing;

  /// Whether to enable haptic feedback.
  final bool? enableFeedback;

  /// The tooltip text for the button.
  final String? tooltip;

  /// The hero tag for the button.
  final Object? heroTag;

  /// The widget below this widget in the tree.
  /// Typically an [Icon] widget.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.floatingActionButton.name;

  /// Creates a [PhlutsFloatingActionButton] from JSON.
  factory PhlutsFloatingActionButton.fromJson(Map<String, dynamic> json) =>
      _$PhlutsFloatingActionButtonFromJson(json);

  /// Converts this button to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsFloatingActionButtonToJson(this);
}
