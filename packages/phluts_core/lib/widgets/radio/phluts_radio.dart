import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_radio.g.dart';

/// A Phluts model representing Flutter's Radio and CupertinoRadio widgets.
///
/// Displays a circular selection control that allows the user to select one
/// option from a set. The `radioType` controls whether a Material, Cupertino,
/// or adaptive variant is rendered by the parser.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsRadio(
///   radioType: PhlutsRadioType.material,
///   value: 'a',
///   groupId: 'letter',
///   activeColor: PhlutsColors.blue,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "radio",
///   "radioType": "material",
///   "value": "a",
///   "groupId": "letter",
///   "activeColor": "#2196F3"
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Radio documentation (`https://api.flutter.dev/flutter/material/Radio-class.html`)
///  * Flutter's CupertinoRadio documentation (`https://api.flutter.dev/flutter/cupertino/CupertinoRadio-class.html`)
@JsonSerializable(explicitToJson: true)
class PhlutsRadio extends PhlutsWidget {
  /// Creates a [PhlutsRadio].
  const PhlutsRadio({
    this.radioType,
    this.value,
    this.groupId,
    this.onChanged,
    this.mouseCursor,
    this.toggleable,
    this.activeColor,
    this.inactiveColor,
    this.fillColor,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.autofocus,
    this.useCheckmarkStyle,
    this.useCupertinoCheckmarkStyle,
    this.enabled,
    this.backgroundColor,
    this.side,
    this.innerRadius,
  });

  /// Which platform style of radio to render.
  final PhlutsRadioType? radioType;

  /// The value represented by this radio.
  final dynamic value;

  /// Identifier to associate this radio with a group in scope.
  /// Used by the parser to look up the current `groupValue`.
  final String? groupId;

  /// Action invoked when the user selects this radio.
  ///
  /// Type: [PhlutsAction]
  final PhlutsAction? onChanged;

  /// Mouse cursor to display when hovering this widget.
  final PhlutsMouseCursor? mouseCursor;

  /// Whether this radio can be unselected.
  final bool? toggleable;

  /// The color used when this radio is selected.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? activeColor;

  /// The color used when this radio is not selected (Cupertino only).
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? inactiveColor;

  /// The color of the radial reaction (Material) or fill (Cupertino).
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? fillColor;

  /// The color to use for the focus highlight.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? focusColor;

  /// The color to use for the hover highlight.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? hoverColor;

  /// The color to use for the overlay.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? overlayColor;

  /// The splash radius of the radio's splash in logical pixels.
  @DoubleConverter()
  final double? splashRadius;

  /// Configures the minimum size of the area within which the radio may be pressed.
  final PhlutsMaterialTapTargetSize? materialTapTargetSize;

  /// Defines how compact the radio's layout is.
  final PhlutsVisualDensity? visualDensity;

  /// Whether this radio should focus itself if nothing else is focused.
  final bool? autofocus;

  /// Whether to use a checkmark style for Cupertino radios.
  final bool? useCheckmarkStyle;

  /// Whether to use a Cupertino checkmark style when using adaptive radios.
  final bool? useCupertinoCheckmarkStyle;

  /// Whether this radio is enabled for user interaction.
  final bool? enabled;

  /// The background color of the radio.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? backgroundColor;

  /// The border side of the radio.
  ///
  /// Type: [PhlutsBorderSide]
  final PhlutsBorderSide? side;

  /// The inner radius of the radio in logical pixels.
  @DoubleConverter()
  final double? innerRadius;

  /// Widget type identifier.
  @override
  String get type => WidgetType.radio.name;

  /// Creates a [PhlutsRadio] from a JSON map.
  factory PhlutsRadio.fromJson(Map<String, dynamic> json) =>
      _$PhlutsRadioFromJson(json);

  /// Converts this [PhlutsRadio] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsRadioToJson(this);
}
