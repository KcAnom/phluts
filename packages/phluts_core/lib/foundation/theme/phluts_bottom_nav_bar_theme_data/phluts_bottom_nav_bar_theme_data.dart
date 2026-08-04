import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/navigation/phluts_bottom_navigation_bar_item/phluts_bottom_navigation_bar_item.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';
import 'package:phluts_core/foundation/theme/phluts_icon_theme_data/phluts_icon_theme_data.dart';

part 'phluts_bottom_nav_bar_theme_data.g.dart';

/// A Phluts model representing Flutter's [BottomNavigationBarThemeData].
///
/// Defines the theme for bottom navigation bars, including colors, icon themes,
/// text styles, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsBottomNavBarThemeData(
///   backgroundColor: '#FFFFFF',
///   selectedItemColor: '#2196F3',
///   unselectedItemColor: '#757575',
///   type: BottomNavigationBarType.fixed,
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
///   "selectedItemColor": "#2196F3",
///   "unselectedItemColor": "#757575",
///   "type": "fixed",
///   "showSelectedLabels": true,
///   "showUnselectedLabels": true
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsBottomNavBarThemeData implements PhlutsElement {
  /// Creates a [PhlutsBottomNavBarThemeData] with the given properties.
  const PhlutsBottomNavBarThemeData({
    this.backgroundColor,
    this.elevation,
    this.selectedIconTheme,
    this.unselectedIconTheme,
    this.selectedItemColor,
    this.unselectedItemColor,
    this.selectedLabelStyle,
    this.unselectedLabelStyle,
    this.showSelectedLabels,
    this.showUnselectedLabels,
    this.type,
    this.enableFeedback,
    this.landscapeLayout,
  });

  /// The background color of the bottom navigation bar.
  final String? backgroundColor;

  /// The z-coordinate at which to place this bottom navigation bar relative to its parent.
  final double? elevation;

  /// The icon theme for selected items.
  final PhlutsIconThemeData? selectedIconTheme;

  /// The icon theme for unselected items.
  final PhlutsIconThemeData? unselectedIconTheme;

  /// The color of the selected item.
  final String? selectedItemColor;

  /// The color of the unselected items.
  final String? unselectedItemColor;

  /// The text style for selected labels.
  final PhlutsTextStyle? selectedLabelStyle;

  /// The text style for unselected labels.
  final PhlutsTextStyle? unselectedLabelStyle;

  /// Whether to show labels for selected items.
  final bool? showSelectedLabels;

  /// Whether to show labels for unselected items.
  final bool? showUnselectedLabels;

  /// The type of bottom navigation bar.
  final PhlutsBottomNavigationBarType? type;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  final bool? enableFeedback;

  /// The layout behavior in landscape orientation.
  final PhlutsBottomNavigationBarLandscapeLayout? landscapeLayout;

  /// Creates a [PhlutsBottomNavBarThemeData] from JSON.
  factory PhlutsBottomNavBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsBottomNavBarThemeDataFromJson(json);

  /// Converts this bottom navigation bar theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsBottomNavBarThemeDataToJson(this);
}
