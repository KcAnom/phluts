import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/alignment/phluts_alignment_geometry/phluts_alignment_geometry.dart';
import 'package:phluts_core/foundation/borders/phluts_border/phluts_border.dart';
import 'package:phluts_core/foundation/geometry/phluts_edge_insets/phluts_edge_insets.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';

part 'phluts_dialog_theme.g.dart';

/// A Phluts model representing Flutter's [DialogTheme].
///
/// Defines the theme for dialogs, including colors, elevation, shape, alignment,
/// and text styles.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsDialogTheme(
///   backgroundColor: '#FFFFFF',
///   elevation: 24.0,
///   titleTextStyle: PhlutsTextStyle(...),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#FFFFFF",
///   "elevation": 24.0,
///   "shadowColor": "#000000",
///   "surfaceTintColor": "#000000",
///   "alignment": {...},
///   "iconColor": "#2196F3"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsDialogTheme implements PhlutsElement {
  /// Creates a [PhlutsDialogTheme] with the given properties.
  const PhlutsDialogTheme({
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.alignment,
    this.titleTextStyle,
    this.contentTextStyle,
    this.actionsPadding,
    this.iconColor,
  });

  /// The background color of the dialog.
  final String? backgroundColor;

  /// The z-coordinate at which to place this dialog relative to its parent.
  final double? elevation;

  /// The color of the shadow below the dialog.
  final String? shadowColor;

  /// The color used to tint the surface of this dialog.
  final String? surfaceTintColor;

  /// The shape of the dialog's border.
  final PhlutsBorder? shape;

  /// The alignment of the dialog.
  final PhlutsAlignmentGeometry? alignment;

  /// The text style for the dialog's title.
  final PhlutsTextStyle? titleTextStyle;

  /// The text style for the dialog's content.
  final PhlutsTextStyle? contentTextStyle;

  /// The padding around the dialog's action buttons.
  final PhlutsEdgeInsets? actionsPadding;

  /// The color of the dialog's icon.
  final String? iconColor;

  /// Creates a [PhlutsDialogTheme] from JSON.
  factory PhlutsDialogTheme.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDialogThemeFromJson(json);

  /// Converts this dialog theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsDialogThemeToJson(this);
}
