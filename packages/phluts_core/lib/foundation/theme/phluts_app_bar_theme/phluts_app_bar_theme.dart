import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/borders/phluts_shape_border/phluts_shape_border.dart';
import 'package:phluts_core/foundation/geometry/phluts_edge_insets/phluts_edge_insets.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';
import 'package:phluts_core/foundation/theme/phluts_icon_theme_data/phluts_icon_theme_data.dart';
import 'package:phluts_core/foundation/ui_components/phluts_system_ui_overlay_style/phluts_system_ui_overlay_style.dart';

part 'phluts_app_bar_theme.g.dart';

/// A Phluts model representing Flutter's [AppBarTheme].
///
/// Defines the theme for app bars, including colors, elevation, text styles,
/// icon themes, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsAppBarTheme(
///   backgroundColor: '#2196F3',
///   foregroundColor: '#FFFFFF',
///   elevation: 4.0,
///   centerTitle: true,
///   titleTextStyle: PhlutsTextStyle(
///     fontSize: 20.0,
///     fontWeight: 'bold',
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#2196F3",
///   "foregroundColor": "#FFFFFF",
///   "elevation": 4.0,
///   "scrolledUnderElevation": 0.0,
///   "shadowColor": "#000000",
///   "surfaceTintColor": "#000000",
///   "centerTitle": true,
///   "titleSpacing": 16.0,
///   "toolbarHeight": 56.0,
///   "leadingWidth": 56.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsAppBarTheme implements PhlutsElement {
  /// Creates a [PhlutsAppBarTheme] with the given properties.
  const PhlutsAppBarTheme({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.scrolledUnderElevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.iconTheme,
    this.actionsIconTheme,
    this.centerTitle,
    this.titleSpacing,
    this.leadingWidth,
    this.toolbarHeight,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
    this.actionsPadding,
  });

  /// The background color of the app bar.
  final String? backgroundColor;

  /// The default color for [AppBar] icons and text.
  final String? foregroundColor;

  /// The z-coordinate at which to place this app bar relative to its parent.
  final double? elevation;

  /// The z-coordinate at which to place this app bar when it's scrolled under.
  final double? scrolledUnderElevation;

  /// The color of the shadow below the app bar.
  final String? shadowColor;

  /// The color used as an overlay on the app bar's surface color.
  final String? surfaceTintColor;

  /// The shape of the app bar's [Material].
  final PhlutsShapeBorder? shape;

  /// The color, opacity, and size to use for app bar icons.
  final PhlutsIconThemeData? iconTheme;

  /// The color, opacity, and size to use for the app bar's action icons.
  final PhlutsIconThemeData? actionsIconTheme;

  /// Whether the title should be centered.
  final bool? centerTitle;

  /// The spacing around the title content on the app bar.
  final double? titleSpacing;

  /// The width of the leading widget.
  final double? leadingWidth;

  /// The height of the app bar's toolbar.
  final double? toolbarHeight;

  /// The default text style for the app bar's toolbar.
  final PhlutsTextStyle? toolbarTextStyle;

  /// The default text style for the app bar's title.
  final PhlutsTextStyle? titleTextStyle;

  /// The system UI overlay style for the app bar.
  final PhlutsSystemUIOverlayStyle? systemOverlayStyle;

  /// The padding around the action buttons.
  final PhlutsEdgeInsets? actionsPadding;

  /// Creates a [PhlutsAppBarTheme] from JSON.
  factory PhlutsAppBarTheme.fromJson(Map<String, dynamic> json) =>
      _$PhlutsAppBarThemeFromJson(json);

  /// Converts this app bar theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsAppBarThemeToJson(this);
}
