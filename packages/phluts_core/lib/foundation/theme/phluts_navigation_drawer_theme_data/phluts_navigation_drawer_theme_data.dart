import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/borders/phluts_shape_border/phluts_shape_border.dart';
import 'package:phluts_core/foundation/geometry/phluts_size/phluts_size.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';
import 'package:phluts_core/foundation/theme/phluts_icon_theme_data/phluts_icon_theme_data.dart';

part 'phluts_navigation_drawer_theme_data.g.dart';

/// A Phluts model representing Flutter's [NavigationDrawerThemeData].
///
/// Defines the theme for navigation drawers, including colors, elevation,
/// indicator, icon themes, and text styles.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsNavigationDrawerThemeData(
///   backgroundColor: '#FFFFFF',
///   elevation: 16.0,
///   indicatorColor: '#E3F2FD',
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
///   "indicatorColor": "#E3F2FD",
///   "tileHeight": 48.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsNavigationDrawerThemeData implements PhlutsElement {
  /// Creates a [PhlutsNavigationDrawerThemeData] with the given properties.
  const PhlutsNavigationDrawerThemeData({
    this.tileHeight,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.indicatorColor,
    this.indicatorShape,
    this.indicatorSize,
    this.labelTextStyle,
    this.iconTheme,
  });

  /// The height of each navigation drawer tile.
  final double? tileHeight;

  /// The background color of the navigation drawer.
  final String? backgroundColor;

  /// The z-coordinate at which to place this navigation drawer relative to its parent.
  final double? elevation;

  /// The color of the shadow below the navigation drawer.
  final String? shadowColor;

  /// The color used to tint the surface of this navigation drawer.
  final String? surfaceTintColor;

  /// The color of the indicator for the selected destination.
  final String? indicatorColor;

  /// The shape of the indicator.
  final PhlutsShapeBorder? indicatorShape;

  /// The size of the indicator.
  final PhlutsSize? indicatorSize;

  /// The text style for navigation drawer labels.
  final PhlutsTextStyle? labelTextStyle;

  /// The icon theme for navigation drawer icons.
  final PhlutsIconThemeData? iconTheme;

  /// Creates a [PhlutsNavigationDrawerThemeData] from JSON.
  factory PhlutsNavigationDrawerThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsNavigationDrawerThemeDataFromJson(json);

  /// Converts this navigation drawer theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsNavigationDrawerThemeDataToJson(this);
}
