import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/phluts_core.dart';

part 'phluts_icon_button.g.dart';

/// A Phluts model representing Flutter's [IconButton] widget.
///
/// Represents a Material Design icon button that responds to touches
/// by filling with color.
///
/// ```dart
/// PhlutsIconButton(
///   onPressed: {'action': 'navigate', 'route': '/next'},
///   icon: PhlutsIcon(icon: 'add'),
///   color: '#FF5722',
/// )
/// ```
///
/// ```json
/// {
///   "type": "iconButton",
///   "icon": {"type": "icon", "icon": "add"},
///   "onPressed": {"action": "navigate", "route": "/next"},
///   "color": "#FF5722"
/// }
/// ```
@JsonSerializable()
class PhlutsIconButton extends PhlutsWidget {
  /// Creates a [PhlutsIconButton] with the given properties.
  const PhlutsIconButton({
    this.iconSize,
    this.visualDensity,
    this.padding,
    this.alignment,
    this.splashRadius,
    this.color,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.disabledColor,
    this.onPressed,
    this.onHover,
    this.onLongPress,
    this.mouseCursor,
    this.autofocus,
    this.tooltip,
    this.enableFeedback,
    this.constraints,
    this.style,
    this.isSelected,
    this.selectedIcon,
    this.icon,
  });

  /// The size of the icon inside the button.
  final double? iconSize;

  /// The visual density of the button.
  final PhlutsVisualDensity? visualDensity;

  /// The padding around the button.
  final PhlutsEdgeInsets? padding;

  /// The alignment of the icon within the button.
  final PhlutsAlignment? alignment;

  /// The radius of the splash effect.
  final double? splashRadius;

  /// The color of the icon.
  final String? color;

  /// The color when the button is focused.
  final String? focusColor;

  /// The color when the button is hovered.
  final String? hoverColor;

  /// The color when the button is highlighted.
  final String? highlightColor;

  /// The color of the splash effect.
  final String? splashColor;

  /// The color when the button is disabled.
  final String? disabledColor;

  /// Called when the button is tapped or otherwise activated.
  /// If null, the button will be disabled.
  final PhlutsAction? onPressed;

  /// Called when the button is hovered.
  final PhlutsAction? onHover;

  /// Called when the button is long pressed.
  final PhlutsAction? onLongPress;

  /// The mouse cursor for the button.
  final PhlutsMouseCursor? mouseCursor;

  /// True if this widget will be selected as the initial focus when no other
  /// node in its scope is currently focused.
  final bool? autofocus;

  /// The tooltip text for the button.
  final String? tooltip;

  /// Whether to enable haptic feedback.
  final bool? enableFeedback;

  /// The constraints for the button.
  final PhlutsBoxConstraints? constraints;

  /// Customizes this button's appearance.
  final PhlutsButtonStyle? style;

  /// Whether the button is selected.
  final bool? isSelected;

  /// The icon to display when the button is selected.
  final PhlutsWidget? selectedIcon;

  /// The icon to display in the button.
  final PhlutsWidget? icon;

  /// Widget type identifier.
  @override
  String get type => WidgetType.iconButton.name;

  /// Creates a [PhlutsIconButton] from JSON.
  factory PhlutsIconButton.fromJson(Map<String, dynamic> json) =>
      _$PhlutsIconButtonFromJson(json);

  /// Converts this button to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsIconButtonToJson(this);
}
