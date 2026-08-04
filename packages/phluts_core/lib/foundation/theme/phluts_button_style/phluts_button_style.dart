import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/alignment/phluts_alignment.dart';
import 'package:phluts_core/foundation/animation/phluts_duration/phluts_duration.dart';
import 'package:phluts_core/foundation/borders/phluts_border_side/phluts_border_side.dart';
import 'package:phluts_core/foundation/borders/phluts_shape_border/phluts_shape_border.dart';
import 'package:phluts_core/foundation/colors/phluts_color/phluts_colors.dart';
import 'package:phluts_core/foundation/geometry/phluts_edge_insets/phluts_edge_insets.dart';
import 'package:phluts_core/foundation/geometry/phluts_size/phluts_size.dart';
import 'package:phluts_core/foundation/geometry/phluts_visual_density/phluts_visual_density.dart';
import 'package:phluts_core/foundation/interaction/phluts_mouse_cursor.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';

part 'phluts_button_style.g.dart';

/// Icon alignment options for buttons.
///
/// Defines where the icon should be positioned relative to the button text.
enum PhlutsIconAlignment {
  /// Icon appears at the start (left in LTR, right in RTL).
  start,

  /// Icon appears at the end (right in LTR, left in RTL).
  end,
}

/// Material tap target size options.
///
/// Defines the minimum size of the tap target area.
enum PhlutsMaterialTapTargetSize {
  /// Tap target is padded to meet minimum size requirements.
  padded,

  /// Tap target shrinks to fit the button content.
  shrinkWrap,
}

/// A Phluts model representing Flutter's ButtonStyle.
///
/// Defines the visual properties of Material buttons like ElevatedButton,
/// TextButton, OutlinedButton, etc.
///
/// ```dart
/// PhlutsButtonStyle(
///   foregroundColor: PhlutsColors.white,
///   backgroundColor: PhlutsColors.blue,
///   elevation: 4.0,
///   padding: PhlutsEdgeInsets.all(16.0),
/// )
/// ```
///
/// ```json
/// {
///   "foregroundColor": "#FFFFFF",
///   "backgroundColor": "#2196F3",
///   "elevation": 4.0,
///   "padding": {"all": 16.0}
/// }
/// ```
@JsonSerializable()
class PhlutsButtonStyle extends PhlutsElement {
  /// Creates a [PhlutsButtonStyle] with the given properties.
  const PhlutsButtonStyle({
    this.foregroundColor,
    this.backgroundColor,
    this.disabledForegroundColor,
    this.disabledBackgroundColor,
    this.shadowColor,
    this.surfaceTintColor,
    this.iconColor,
    this.iconSize,
    this.iconAlignment,
    this.disabledIconColor,
    this.overlayColor,
    this.elevation,
    this.textStyle,
    this.padding,
    this.minimumSize,
    this.fixedSize,
    this.maximumSize,
    this.side,
    this.shape,
    this.enableFeedback,
    this.alignment,
    this.tapTargetSize,
    this.animationDuration,
    this.enabledMouseCursor,
    this.disabledMouseCursor,
    this.visualDensity,
  });

  /// The color to use for this button's text and icons.
  final PhlutsColor? foregroundColor;

  /// The background fill color.
  final PhlutsColor? backgroundColor;

  /// The foreground color to use when this button is disabled.
  final PhlutsColor? disabledForegroundColor;

  /// The background color to use when this button is disabled.
  final PhlutsColor? disabledBackgroundColor;

  /// The shadow color of the button's [Material].
  final PhlutsColor? shadowColor;

  /// The surface tint color of the button's [Material].
  final PhlutsColor? surfaceTintColor;

  /// The color to use for this button's icons.
  final PhlutsColor? iconColor;

  /// The size of this button's icon.
  final double? iconSize;

  /// The alignment of the button's icon relative to its text label.
  final PhlutsIconAlignment? iconAlignment;

  /// The color to use for this button's icons when the button is disabled.
  final PhlutsColor? disabledIconColor;

  /// The overlay color of the button's [InkWell].
  final PhlutsColor? overlayColor;

  /// The elevation of the button's [Material].
  final double? elevation;

  /// The style to use for this button's [Text] widget descendants.
  final PhlutsTextStyle? textStyle;

  /// The internal padding for the button's [child].
  final PhlutsEdgeInsets? padding;

  /// The minimum size of the button.
  /// Represented as {"width": 64.0, "height": 36.0}
  final PhlutsSize? minimumSize;

  /// The button's size.
  /// Represented as {"width": 200.0, "height": 50.0}
  final PhlutsSize? fixedSize;

  /// The maximum size of the button.
  /// Represented as {"width": 300.0, "height": 100.0}
  final PhlutsSize? maximumSize;

  /// The color and weight of the button's outline.
  final PhlutsBorderSide? side;

  /// The shape of the button's border.
  final PhlutsShapeBorder? shape;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  final bool? enableFeedback;

  /// Typically used to size the button's [child].
  final PhlutsAlignment? alignment;

  /// Configures the minimum size of the area within which the button may be pressed.
  final PhlutsMaterialTapTargetSize? tapTargetSize;

  /// Defines the duration of animated changes for shape and elevation.
  /// Duration in milliseconds.
  final PhlutsDuration? animationDuration;

  /// The mouse cursor to use when the button is enabled.
  final PhlutsMouseCursor? enabledMouseCursor;

  /// The mouse cursor to use when the button is disabled.
  final PhlutsMouseCursor? disabledMouseCursor;

  /// The visual density of the button's [Material].
  final PhlutsVisualDensity? visualDensity;

  /// Creates a [PhlutsButtonStyle] from JSON.
  factory PhlutsButtonStyle.fromJson(Map<String, dynamic> json) =>
      _$PhlutsButtonStyleFromJson(json);

  /// Converts this button style to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsButtonStyleToJson(this);
}
