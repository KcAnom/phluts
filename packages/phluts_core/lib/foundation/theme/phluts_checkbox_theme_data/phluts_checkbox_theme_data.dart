import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/borders/phluts_border_side/phluts_border_side.dart';
import 'package:phluts_core/foundation/borders/phluts_shape_border/phluts_shape_border.dart';
import 'package:phluts_core/foundation/geometry/phluts_visual_density/phluts_visual_density.dart';
import 'package:phluts_core/foundation/interaction/phluts_mouse_cursor.dart';
import 'package:phluts_core/foundation/theme/phluts_button_style/phluts_button_style.dart';

part 'phluts_checkbox_theme_data.g.dart';

/// A Phluts model representing Flutter's [CheckboxThemeData].
///
/// Defines the theme for checkboxes, including colors, shape, size, and interaction properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsCheckboxThemeData(
///   fillColor: '#2196F3',
///   checkColor: '#FFFFFF',
///   shape: PhlutsRoundedRectangleBorder(...),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "fillColor": "#2196F3",
///   "checkColor": "#FFFFFF",
///   "overlayColor": "#E3F2FD",
///   "splashRadius": 20.0,
///   "materialTapTargetSize": "padded",
///   "visualDensity": "standard"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsCheckboxThemeData implements PhlutsElement {
  /// Creates a [PhlutsCheckboxThemeData] with the given properties.
  const PhlutsCheckboxThemeData({
    this.mouseCursor,
    this.fillColor,
    this.checkColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.shape,
    this.side,
  });

  /// The mouse cursor to use when hovering over the checkbox.
  final PhlutsMouseCursor? mouseCursor;

  /// The color to fill the checkbox with.
  final String? fillColor;

  /// The color of the check icon.
  final String? checkColor;

  /// The color of the overlay shown when the checkbox is pressed.
  final String? overlayColor;

  /// The radius of the splash effect.
  final double? splashRadius;

  /// The minimum size of the tap target.
  final PhlutsMaterialTapTargetSize? materialTapTargetSize;

  /// The visual density of the checkbox.
  final PhlutsVisualDensity? visualDensity;

  /// The shape of the checkbox's border.
  final PhlutsShapeBorder? shape;

  /// The border side of the checkbox.
  final PhlutsBorderSide? side;

  /// Creates a [PhlutsCheckboxThemeData] from JSON.
  factory PhlutsCheckboxThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsCheckboxThemeDataFromJson(json);

  /// Converts this checkbox theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsCheckboxThemeDataToJson(this);
}
