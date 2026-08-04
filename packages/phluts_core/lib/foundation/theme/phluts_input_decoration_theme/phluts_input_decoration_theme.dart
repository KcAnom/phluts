import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/borders/phluts_border_side/phluts_border_side.dart';
import 'package:phluts_core/foundation/borders/phluts_input_border/phluts_input_border.dart';
import 'package:phluts_core/foundation/geometry/phluts_box_constraints/phluts_box_constraints.dart';
import 'package:phluts_core/foundation/geometry/phluts_edge_insets/phluts_edge_insets.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';

part 'phluts_input_decoration_theme.g.dart';

/// A Phluts representation of input decoration theme properties.
///
/// This class defines the default styling for input decorations including
/// text styles, colors, borders, and layout properties for form fields.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsInputDecorationTheme(
///   labelStyle: PhlutsTextStyle(color: PhlutsColors.grey),
///   focusedBorder: PhlutsInputBorder(
///     borderSide: PhlutsBorderSide(color: PhlutsColors.blue),
///   ),
///   filled: true,
///   fillColor: '#F5F5F5',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "labelStyle": {"color": "#757575"},
///   "focusedBorder": {
///     "borderSide": {"color": "#2196F3"}
///   },
///   "filled": true,
///   "fillColor": "#F5F5F5"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsInputDecorationTheme extends PhlutsElement {
  /// Creates an input decoration theme with the specified properties.
  const PhlutsInputDecorationTheme({
    this.labelStyle,
    this.floatingLabelStyle,
    this.helperStyle,
    this.helperMaxLines,
    this.hintStyle,
    this.errorStyle,
    this.errorMaxLines,
    this.floatingLabelBehavior,
    this.floatingLabelAlignment,
    this.isDense,
    this.contentPadding,
    this.isCollapsed,
    this.iconColor,
    this.prefixStyle,
    this.prefixIconColor,
    this.suffixStyle,
    this.suffixIconColor,
    this.counterStyle,
    this.filled,
    this.fillColor,
    this.activeIndicatorBorder,
    this.outlineBorder,
    this.focusColor,
    this.hoverColor,
    this.errorBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.enabledBorder,
    this.border,
    this.alignLabelWithHint,
    this.constraints,
  });

  /// The style for input field labels.
  final PhlutsTextStyle? labelStyle;

  /// The style for floating labels when they are floating.
  final PhlutsTextStyle? floatingLabelStyle;

  /// The style for helper text.
  final PhlutsTextStyle? helperStyle;

  /// The maximum number of lines for helper text.
  final int? helperMaxLines;

  /// The style for hint text.
  final PhlutsTextStyle? hintStyle;

  /// The style for error text.
  final PhlutsTextStyle? errorStyle;

  /// The maximum number of lines for error text.
  final int? errorMaxLines;

  /// How floating labels should behave.
  final String? floatingLabelBehavior;

  /// How floating labels should be aligned.
  final String? floatingLabelAlignment;

  /// Whether the input decoration is dense.
  final bool? isDense;

  /// The padding for the input content.
  final PhlutsEdgeInsets? contentPadding;

  /// Whether the input decoration is collapsed.
  final bool? isCollapsed;

  /// The color of the icon.
  final String? iconColor;

  /// The style for prefix text.
  final PhlutsTextStyle? prefixStyle;

  /// The color of the prefix icon.
  final String? prefixIconColor;

  /// The style for suffix text.
  final PhlutsTextStyle? suffixStyle;

  /// The color of the suffix icon.
  final String? suffixIconColor;

  /// The style for counter text.
  final PhlutsTextStyle? counterStyle;

  /// Whether the input field should be filled.
  final bool? filled;

  /// The fill color for the input field.
  final String? fillColor;

  /// The border for active indicators.
  final PhlutsBorderSide? activeIndicatorBorder;

  /// The outline border.
  final PhlutsBorderSide? outlineBorder;

  /// The color when the input is focused.
  final String? focusColor;

  /// The color when the input is hovered.
  final String? hoverColor;

  /// The border when there is an error.
  final PhlutsInputBorder? errorBorder;

  /// The border when the input is focused.
  final PhlutsInputBorder? focusedBorder;

  /// The border when focused and there is an error.
  final PhlutsInputBorder? focusedErrorBorder;

  /// The border when the input is disabled.
  final PhlutsInputBorder? disabledBorder;

  /// The border when the input is enabled.
  final PhlutsInputBorder? enabledBorder;

  /// The default border.
  final PhlutsInputBorder? border;

  /// Whether to align the label with the hint.
  final bool? alignLabelWithHint;

  /// The constraints for the input decoration.
  final PhlutsBoxConstraints? constraints;

  /// Creates a [PhlutsInputDecorationTheme] from a JSON map.
  factory PhlutsInputDecorationTheme.fromJson(Map<String, dynamic> json) =>
      _$PhlutsInputDecorationThemeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsInputDecorationThemeToJson(this);
}
