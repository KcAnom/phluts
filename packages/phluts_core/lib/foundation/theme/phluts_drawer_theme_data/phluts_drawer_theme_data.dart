import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/borders/phluts_shape_border/phluts_shape_border.dart';
import 'package:phluts_core/foundation/layout/phluts_clip.dart';

part 'phluts_drawer_theme_data.g.dart';

/// A Phluts model representing Flutter's [DrawerThemeData].
///
/// Defines the theme for drawers, including colors, elevation, shape, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsDrawerThemeData(
///   backgroundColor: '#FFFFFF',
///   elevation: 16.0,
///   width: 304.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#FFFFFF",
///   "elevation": 16.0,
///   "shadowColor": "#000000",
///   "surfaceTintColor": "#000000",
///   "scrimColor": "#80000000",
///   "width": 304.0,
///   "clipBehavior": "antiAlias"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsDrawerThemeData implements PhlutsElement {
  /// Creates a [PhlutsDrawerThemeData] with the given properties.
  const PhlutsDrawerThemeData({
    this.backgroundColor,
    this.scrimColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.endShape,
    this.width,
    this.clipBehavior,
  });

  /// The background color of the drawer.
  final String? backgroundColor;

  /// The color of the scrim that appears behind the drawer.
  final String? scrimColor;

  /// The z-coordinate at which to place this drawer relative to its parent.
  final double? elevation;

  /// The color of the shadow below the drawer.
  final String? shadowColor;

  /// The color used to tint the surface of this drawer.
  final String? surfaceTintColor;

  /// The shape of the drawer's border.
  final PhlutsShapeBorder? shape;

  /// The shape of the end drawer's border.
  final PhlutsShapeBorder? endShape;

  /// The width of the drawer.
  final double? width;

  /// How to clip the drawer's content.
  final PhlutsClip? clipBehavior;

  /// Creates a [PhlutsDrawerThemeData] from JSON.
  factory PhlutsDrawerThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDrawerThemeDataFromJson(json);

  /// Converts this drawer theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsDrawerThemeDataToJson(this);
}
