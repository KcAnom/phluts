import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/borders/phluts_border_side/phluts_border_side.dart';
import 'package:phluts_core/foundation/borders/phluts_shape_border/phluts_shape_border.dart';
import 'package:phluts_core/foundation/colors/phluts_brightness.dart';
import 'package:phluts_core/foundation/geometry/phluts_box_constraints/phluts_box_constraints.dart';
import 'package:phluts_core/foundation/geometry/phluts_edge_insets/phluts_edge_insets.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';
import 'package:phluts_core/foundation/theme/phluts_icon_theme_data/phluts_icon_theme_data.dart';

part 'phluts_chip_theme_data.g.dart';

/// A Phluts model representing Flutter's [ChipThemeData].
///
/// Defines the theme for chips, including colors, elevation, shape, text styles,
/// icon themes, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsChipThemeData(
///   backgroundColor: '#E3F2FD',
///   labelStyle: PhlutsTextStyle(color: '#1976D2'),
///   elevation: 0.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#E3F2FD",
///   "labelStyle": {"color": "#1976D2"},
///   "elevation": 0.0,
///   "pressElevation": 2.0,
///   "showCheckmark": true,
///   "checkmarkColor": "#1976D2"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsChipThemeData implements PhlutsElement {
  /// Creates a [PhlutsChipThemeData] with the given properties.
  const PhlutsChipThemeData({
    this.color,
    this.backgroundColor,
    this.deleteIconColor,
    this.disabledColor,
    this.selectedColor,
    this.secondarySelectedColor,
    this.shadowColor,
    this.surfaceTintColor,
    this.selectedShadowColor,
    this.showCheckmark,
    this.checkmarkColor,
    this.labelPadding,
    this.padding,
    this.side,
    this.shape,
    this.labelStyle,
    this.secondaryLabelStyle,
    this.brightness,
    this.elevation,
    this.pressElevation,
    this.iconTheme,
    this.avatarBoxConstraints,
    this.deleteIconBoxConstraints,
  });

  /// The default color for chip content.
  final String? color;

  /// The background color of the chip.
  final String? backgroundColor;

  /// The color of the delete icon.
  final String? deleteIconColor;

  /// The color to use for disabled chips.
  final String? disabledColor;

  /// The color to use for selected chips.
  final String? selectedColor;

  /// The color to use for secondary selected chips.
  final String? secondarySelectedColor;

  /// The color of the chip's shadow.
  final String? shadowColor;

  /// The color used to tint the surface of this chip.
  final String? surfaceTintColor;

  /// The color of the shadow for selected chips.
  final String? selectedShadowColor;

  /// Whether to show a checkmark for selected chips.
  final bool? showCheckmark;

  /// The color of the checkmark.
  final String? checkmarkColor;

  /// The padding around the chip's label.
  final PhlutsEdgeInsets? labelPadding;

  /// The internal padding for the chip's content.
  final PhlutsEdgeInsets? padding;

  /// The border side of the chip.
  final PhlutsBorderSide? side;

  /// The shape of the chip's border.
  final PhlutsShapeBorder? shape;

  /// The text style for the chip's label.
  final PhlutsTextStyle? labelStyle;

  /// The text style for secondary chip labels.
  final PhlutsTextStyle? secondaryLabelStyle;

  /// The brightness of the chip theme.
  final PhlutsBrightness? brightness;

  /// The z-coordinate at which to place this chip relative to its parent.
  final double? elevation;

  /// The z-coordinate at which to place this chip when pressed.
  final double? pressElevation;

  /// The icon theme for chip icons.
  final PhlutsIconThemeData? iconTheme;

  /// Constraints on the size of chip avatars.
  final PhlutsBoxConstraints? avatarBoxConstraints;

  /// Constraints on the size of the delete icon.
  final PhlutsBoxConstraints? deleteIconBoxConstraints;

  /// Creates a [PhlutsChipThemeData] from JSON.
  factory PhlutsChipThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsChipThemeDataFromJson(json);

  /// Converts this chip theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsChipThemeDataToJson(this);
}
