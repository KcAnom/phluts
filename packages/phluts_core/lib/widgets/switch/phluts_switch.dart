import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_switch.g.dart';

/// A Phluts model representing Flutter's [Switch] and [CupertinoSwitch] widgets.
///
/// Displays a toggleable switch that can be turned on or off. The `switchType`
/// controls whether a Material, Cupertino, or adaptive variant is rendered by
/// the parser.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsSwitch(
///   switchType: PhlutsSwitchType.material,
///   value: true,
///   onChanged: PhlutsSetValueAction(values: [{'key': 'wifi', 'value': false}]),
///   activeColor: PhlutsColors.green,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "switch",
///   "switchType": "material",
///   "value": true,
///   "onChanged": {"type": "setValue", "key": "wifi", "value": false},
///   "activeColor": "#4CAF50"
/// }
/// ```
/// {@end-tool}
@JsonSerializable(explicitToJson: true)
class PhlutsSwitch extends PhlutsWidget {
  /// Creates a [PhlutsSwitch].
  const PhlutsSwitch({
    this.switchType,
    this.value,
    this.onChanged,
    this.autofocus,
    this.activeThumbColor,
    this.activeTrackColor,
    this.focusColor,
    this.hoverColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.onLabelColor,
    this.offLabelColor,
    this.splashRadius,
    this.dragStartBehavior,
    this.overlayColor,
    this.thumbColor,
    this.trackColor,
    this.materialTapTargetSize,
    this.trackOutlineColor,
    this.trackOutlineWidth,
    this.thumbIcon,
    this.inactiveThumbImage,
    this.activeThumbImage,
    this.applyTheme,
    this.applyCupertinoTheme,
  });

  /// Which platform style of switch to render.
  final PhlutsSwitchType? switchType;

  /// Whether this switch is on.
  final bool? value;

  /// Action invoked when the user toggles the switch.
  ///
  /// Type: [PhlutsAction]
  final PhlutsAction? onChanged;

  /// Whether this switch should focus itself if nothing else is focused.
  final bool? autofocus;

  /// The color to use when this switch is on.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? activeThumbColor;

  /// The color to use for the track when this switch is on (Material only).
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? activeTrackColor;

  /// The color to use for the focus highlight.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? focusColor;

  /// The color to use for the hover highlight.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? hoverColor;

  /// The color to use for the thumb when this switch is off (Material only).
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? inactiveThumbColor;

  /// The color to use for the track when this switch is off (Material only).
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? inactiveTrackColor;

  /// The color to use for the ON label (Cupertino only).
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? onLabelColor;

  /// The color to use for the OFF label (Cupertino only).
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? offLabelColor;

  /// The splash radius of the switch's splash in logical pixels.
  @DoubleConverter()
  final double? splashRadius;

  /// Determines when a drag gesture should start.
  ///
  /// Type: [PhlutsDragStartBehavior]
  final PhlutsDragStartBehavior? dragStartBehavior;

  /// The overlay color for the switch's ink response.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? overlayColor;

  /// The color of the switch thumb for Material (via MaterialStateProperty uniform value).
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? thumbColor;

  /// The color of the switch track for Material (via MaterialStateProperty uniform value).
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? trackColor;

  /// Configures the minimum size of the area within which the switch may be pressed.
  ///
  /// Type: [PhlutsMaterialTapTargetSize]
  final PhlutsMaterialTapTargetSize? materialTapTargetSize;

  /// The outline color of the track for Material (via MaterialStateProperty uniform value).
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? trackOutlineColor;

  /// The outline width of the track for Material (via MaterialStateProperty uniform value).
  @DoubleConverter()
  final double? trackOutlineWidth;

  /// The icon to display on the thumb for Material (via MaterialStateProperty uniform value).
  /// Provide an [Icon] widget.
  final PhlutsWidget? thumbIcon;

  /// Network image URL to display on the thumb when the switch is off (Material only).
  final String? inactiveThumbImage;

  /// Network image URL to display on the thumb when the switch is on (Material only).
  final String? activeThumbImage;

  /// Whether to apply the current Cupertino theme to the [CupertinoSwitch].
  final bool? applyTheme;

  /// Whether to apply the current Cupertino theme when using an adaptive switch.
  final bool? applyCupertinoTheme;

  /// Widget type identifier.
  @override
  String get type => 'switch';

  /// Creates a [PhlutsSwitch] from a JSON map.
  factory PhlutsSwitch.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSwitchFromJson(json);

  /// Converts this [PhlutsSwitch] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSwitchToJson(this);
}
