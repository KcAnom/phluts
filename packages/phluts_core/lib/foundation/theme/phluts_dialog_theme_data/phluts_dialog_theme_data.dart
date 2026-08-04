import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/alignment/phluts_alignment_geometry/phluts_alignment_geometry.dart';
import 'package:phluts_core/foundation/borders/phluts_border/phluts_border.dart';
import 'package:phluts_core/foundation/geometry/phluts_box_constraints/phluts_box_constraints.dart';
import 'package:phluts_core/foundation/geometry/phluts_edge_insets/phluts_edge_insets.dart';
import 'package:phluts_core/foundation/layout/phluts_clip.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';

part 'phluts_dialog_theme_data.g.dart';

/// A Phluts model representing Flutter's [DialogThemeData].
///
/// Defines the theme for dialogs.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsDialogThemeData(
///   backgroundColor: '#FFFFFF',
///   elevation: 24.0,
///   shape: PhlutsBorder(...),
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
///   "surfaceTintColor": "#FF0000",
///   "alignment": {...},
///   "iconColor": "#2196F3",
///   "barrierColor": "#80000000",
///   "insetPadding": {...},
///   "clipBehavior": "antiAlias"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsDialogThemeData implements PhlutsElement {
  /// Creates a [PhlutsDialogThemeData] with the given properties.
  const PhlutsDialogThemeData({
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.alignment,
    this.iconColor,
    this.titleTextStyle,
    this.contentTextStyle,
    this.actionsPadding,
    this.barrierColor,
    this.insetPadding,
    this.clipBehavior,
    this.constraints,
  });

  /// Overrides the default value for [Dialog.backgroundColor].
  final String? backgroundColor;

  /// Overrides the default value for [Dialog.elevation].
  final double? elevation;

  /// Overrides the default value for [Dialog.shadowColor].
  final String? shadowColor;

  /// Overrides the default value for [Dialog.surfaceTintColor].
  final String? surfaceTintColor;

  /// Overrides the default value for [Dialog.shape].
  final PhlutsBorder? shape;

  /// Overrides the default value for [Dialog.alignment].
  final PhlutsAlignmentGeometry? alignment;

  /// Used to configure the [IconTheme] for the [AlertDialog.icon] widget.
  final String? iconColor;

  /// Overrides the default value for [DefaultTextStyle] for [SimpleDialog.title] and
  /// [AlertDialog.title].
  final PhlutsTextStyle? titleTextStyle;

  /// Overrides the default value for [DefaultTextStyle] for [SimpleDialog.children] and
  /// [AlertDialog.content].
  final PhlutsTextStyle? contentTextStyle;

  /// Overrides the default value for [AlertDialog.actionsPadding].
  final PhlutsEdgeInsets? actionsPadding;

  /// Overrides the default value for [barrierColor] in [showDialog].
  final String? barrierColor;

  /// Overrides the default value for [Dialog.insetPadding].
  final PhlutsEdgeInsets? insetPadding;

  /// Overrides the default value of [Dialog.clipBehavior].
  final PhlutsClip? clipBehavior;

  /// Constrains the size of the [Dialog].
  ///
  /// If null, the dialog's size will be unconstrained.
  final PhlutsBoxConstraints? constraints;

  /// Creates a [PhlutsDialogThemeData] from JSON.
  factory PhlutsDialogThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDialogThemeDataFromJson(json);

  /// Converts this dialog theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsDialogThemeDataToJson(this);
}
