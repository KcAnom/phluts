import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_check_box.g.dart';

/// A Phluts model representing Flutter's [Checkbox] widget.
///
/// Displays a Material Design checkbox that can toggle between checked and
/// unchecked states. Supports tristate behavior, mouse cursor, colors, and
/// splash radius customizations.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsCheckBox(
///   id: 'acceptTerms',
///   value: false,
///   onChanged: PhlutsSetValueAction(values: [{'key': 'acceptTerms', 'value': true}]),
///   activeColor: '#2196F3',
///   checkColor: '#FFFFFF',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "checkBox",
///   "id": "acceptTerms",
///   "value": false,
///   "onChanged": {"type": "setValue", "key": "acceptTerms"},
///   "activeColor": "#2196F3",
///   "checkColor": "#FFFFFF"
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [Checkbox documentation](https://api.flutter.dev/flutter/material/Checkbox-class.html)
@JsonSerializable(explicitToJson: true)
class PhlutsCheckBox extends PhlutsWidget {
  /// Creates a [PhlutsCheckBox].
  const PhlutsCheckBox({
    this.id,
    this.value,
    this.tristate,
    this.onChanged,
    this.mouseCursor,
    this.activeColor,
    this.fillColor,
    this.checkColor,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.autofocus,
    this.isError,
  });

  /// Identifier used with form scope to store/read this checkbox's value.
  final String? id;

  /// Whether this checkbox is checked.
  final bool? value;

  /// Whether this checkbox supports three states (true, false, null).
  final bool? tristate;

  /// Action invoked when the user toggles the checkbox.
  ///
  /// Type: [PhlutsAction]
  final PhlutsAction? onChanged;

  /// The mouse cursor to use when hovering over this widget.
  ///
  /// Type: [PhlutsMouseCursor]
  final PhlutsMouseCursor? mouseCursor;

  /// The color to use for the checkbox when it is active.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? activeColor;

  /// The fill color of the checkbox.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? fillColor;

  /// The color of the check icon when the checkbox is checked.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? checkColor;

  /// The color of the checkbox's focus highlight.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? focusColor;

  /// The color of the checkbox when a pointer is hovering over it.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? hoverColor;

  /// The overlay color for the checkbox's ink response.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? overlayColor;

  /// The splash radius of the checkbox's splash in logical pixels.
  @DoubleConverter()
  final double? splashRadius;

  /// Configures the minimum size of the area within which the checkbox may be pressed.
  ///
  /// Type: [PhlutsMaterialTapTargetSize]
  final PhlutsMaterialTapTargetSize? materialTapTargetSize;

  /// Whether this checkbox should focus itself if nothing else is focused.
  final bool? autofocus;

  /// Whether to display the checkbox in an error state.
  final bool? isError;

  /// Widget type identifier.
  @override
  String get type => WidgetType.checkBox.name;

  /// Creates a [PhlutsCheckBox] from a JSON map.
  factory PhlutsCheckBox.fromJson(Map<String, dynamic> json) =>
      _$PhlutsCheckBoxFromJson(json);

  /// Converts this [PhlutsCheckBox] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsCheckBoxToJson(this);
}
