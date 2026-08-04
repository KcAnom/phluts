import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/borders/phluts_border/phluts_border.dart';
import 'package:phluts_core/foundation/navigation/phluts_navigation_destination_label_behavior.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';
import 'package:phluts_core/foundation/theme/phluts_icon_theme_data/phluts_icon_theme_data.dart';

part 'phluts_navigation_bar_theme_data.g.dart';

/// A Phluts model representing Flutter's [NavigationBarThemeData].
///
/// Defines the theme for navigation bars, including colors, elevation,
/// indicator, icon themes, and text styles.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsNavigationBarThemeData(
///   backgroundColor: '#FFFFFF',
///   elevation: 8.0,
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
///   "elevation": 8.0,
///   "shadowColor": "#000000",
///   "surfaceTintColor": "#000000",
///   "indicatorColor": "#E3F2FD",
///   "height": 80.0,
///   "labelBehavior": "alwaysShow"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsNavigationBarThemeData implements PhlutsElement {
  /// Creates a [PhlutsNavigationBarThemeData] with the given properties.
  const PhlutsNavigationBarThemeData({
    this.height,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.indicatorColor,
    this.indicatorShape,
    this.labelTextStyle,
    this.iconTheme,
    this.labelBehavior,
  });

  /// The height of the navigation bar.
  final double? height;

  /// The background color of the navigation bar.
  final String? backgroundColor;

  /// The z-coordinate at which to place this navigation bar relative to its parent.
  final double? elevation;

  /// The color of the shadow below the navigation bar.
  final String? shadowColor;

  /// The color used to tint the surface of this navigation bar.
  final String? surfaceTintColor;

  /// The color of the indicator for the selected destination.
  final String? indicatorColor;

  /// The shape of the indicator.
  final PhlutsBorder? indicatorShape;

  /// The text style for navigation bar labels.
  final PhlutsTextStyle? labelTextStyle;

  /// The icon theme for navigation bar icons.
  final PhlutsIconThemeData? iconTheme;

  /// The behavior for showing labels.
  final PhlutsNavigationDestinationLabelBehavior? labelBehavior;

  /// Creates a [PhlutsNavigationBarThemeData] from JSON.
  factory PhlutsNavigationBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsNavigationBarThemeDataFromJson(json);

  /// Converts this navigation bar theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsNavigationBarThemeDataToJson(this);
}
