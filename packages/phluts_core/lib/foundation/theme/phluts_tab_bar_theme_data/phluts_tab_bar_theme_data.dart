import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/decoration/phluts_box_decoration/phluts_box_decoration.dart';
import 'package:phluts_core/foundation/geometry/phluts_edge_insets/phluts_edge_insets.dart';
import 'package:phluts_core/foundation/navigation/phluts_tab_bar_indicator_size.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';

part 'phluts_tab_bar_theme_data.g.dart';

/// A Phluts model representing Flutter's [TabBarTheme].
///
/// Defines the theme for tab bars, including colors, indicator, text styles,
/// and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsTabBarThemeData(
///   labelColor: '#2196F3',
///   unselectedLabelColor: '#757575',
///   indicatorColor: '#2196F3',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "labelColor": "#2196F3",
///   "unselectedLabelColor": "#757575",
///   "indicatorColor": "#2196F3",
///   "indicatorSize": "tab",
///   "dividerColor": "#BDBDBD",
///   "labelStyle": {"fontSize": 14.0, "fontWeight": "medium"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsTabBarThemeData implements PhlutsElement {
  /// Creates a [PhlutsTabBarThemeData] with the given properties.
  const PhlutsTabBarThemeData({
    this.indicator,
    this.indicatorColor,
    this.indicatorSize,
    this.dividerColor,
    this.labelColor,
    this.labelPadding,
    this.labelStyle,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.overlayColor,
  });

  /// The decoration for the tab indicator.
  final PhlutsBoxDecoration? indicator;

  /// The color of the tab indicator.
  final String? indicatorColor;

  /// The size of the tab indicator.
  final PhlutsTabBarIndicatorSize? indicatorSize;

  /// The color of the divider between tabs.
  final String? dividerColor;

  /// The color of selected tab labels.
  final String? labelColor;

  /// The padding around tab labels.
  final PhlutsEdgeInsets? labelPadding;

  /// The text style for selected tab labels.
  final PhlutsTextStyle? labelStyle;

  /// The color of unselected tab labels.
  final String? unselectedLabelColor;

  /// The text style for unselected tab labels.
  final PhlutsTextStyle? unselectedLabelStyle;

  /// The overlay color for tab interactions.
  final String? overlayColor;

  /// Creates a [PhlutsTabBarThemeData] from JSON.
  factory PhlutsTabBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTabBarThemeDataFromJson(json);

  /// Converts this tab bar theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsTabBarThemeDataToJson(this);
}
