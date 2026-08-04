import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/borders/phluts_border/phluts_border.dart';
import 'package:phluts_core/foundation/effects/phluts_shadow/phluts_shadow.dart';
import 'package:phluts_core/foundation/geometry/phluts_edge_insets/phluts_edge_insets.dart';
import 'package:phluts_core/foundation/geometry/phluts_visual_density/phluts_visual_density.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';
import 'package:phluts_core/foundation/ui_components/phluts_list_tile_style.dart';
import 'package:phluts_core/foundation/ui_components/phluts_list_tile_title_alignment.dart';

part 'phluts_list_tile_theme_data.g.dart';

/// A Phluts model representing Flutter's [ListTileThemeData].
///
/// Defines the theme for list tiles, including colors, text styles, layout,
/// and visual properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsListTileThemeData(
///   tileColor: '#FFFFFF',
///   selectedTileColor: '#E3F2FD',
///   dense: false,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "tileColor": "#FFFFFF",
///   "selectedTileColor": "#E3F2FD",
///   "dense": false,
///   "style": "list",
///   "iconColor": "#757575",
///   "textColor": "#212121"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsListTileThemeData implements PhlutsElement {
  /// Creates a [PhlutsListTileThemeData] with the given properties.
  const PhlutsListTileThemeData({
    this.dense,
    this.shape,
    this.style,
    this.selectedColor,
    this.iconColor,
    this.textColor,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.leadingAndTrailingTextStyle,
    this.contentPadding,
    this.tileColor,
    this.selectedTileColor,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
    this.enableFeedback,
    this.visualDensity,
    this.titleAlignment,
    this.shadows,
  });

  /// Whether to use a more compact layout for the list tile.
  final bool? dense;

  /// The shape of the list tile's border.
  final PhlutsBorder? shape;

  /// The style of the list tile.
  final PhlutsListTileStyle? style;

  /// The color to use for selected list tiles.
  final String? selectedColor;

  /// The color to use for list tile icons.
  final String? iconColor;

  /// The color to use for list tile text.
  final String? textColor;

  /// The text style for the list tile's title.
  final PhlutsTextStyle? titleTextStyle;

  /// The text style for the list tile's subtitle.
  final PhlutsTextStyle? subtitleTextStyle;

  /// The text style for leading and trailing widgets.
  final PhlutsTextStyle? leadingAndTrailingTextStyle;

  /// The padding around the list tile's content.
  final PhlutsEdgeInsets? contentPadding;

  /// The background color of the list tile.
  final String? tileColor;

  /// The background color of the selected list tile.
  final String? selectedTileColor;

  /// The horizontal gap between the leading widget and the title.
  final double? horizontalTitleGap;

  /// The minimum vertical padding for the list tile.
  final double? minVerticalPadding;

  /// The minimum width for the leading widget.
  final double? minLeadingWidth;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  final bool? enableFeedback;

  /// The visual density of the list tile.
  final PhlutsVisualDensity? visualDensity;

  /// The alignment of the list tile's title.
  final PhlutsListTileTitleAlignment? titleAlignment;

  /// The list of shadows to apply to the list tile.
  final List<PhlutsShadow>? shadows;

  /// Creates a [PhlutsListTileThemeData] from JSON.
  factory PhlutsListTileThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsListTileThemeDataFromJson(json);

  /// Converts this list tile theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsListTileThemeDataToJson(this);
}
