import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/geometry/phluts_edge_insets/phluts_edge_insets.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';

part 'phluts_material_banner_theme_data.g.dart';

/// A Phluts model representing Flutter's [MaterialBannerThemeData].
///
/// Defines the theme for material banners, including colors, elevation,
/// text styles, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsMaterialBannerThemeData(
///   backgroundColor: '#FFFFFF',
///   elevation: 3.0,
///   contentTextStyle: PhlutsTextStyle(...),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#FFFFFF",
///   "elevation": 3.0,
///   "shadowColor": "#000000",
///   "surfaceTintColor": "#000000",
///   "dividerColor": "#BDBDBD",
///   "padding": {"all": 16.0}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsMaterialBannerThemeData implements PhlutsElement {
  /// Creates a [PhlutsMaterialBannerThemeData] with the given properties.
  const PhlutsMaterialBannerThemeData({
    this.backgroundColor,
    this.surfaceTintColor,
    this.shadowColor,
    this.dividerColor,
    this.contentTextStyle,
    this.elevation,
    this.padding,
    this.leadingPadding,
  });

  /// The background color of the material banner.
  final String? backgroundColor;

  /// The color used to tint the surface of this material banner.
  final String? surfaceTintColor;

  /// The color of the shadow below the material banner.
  final String? shadowColor;

  /// The color of the divider in the material banner.
  final String? dividerColor;

  /// The text style for the material banner's content.
  final PhlutsTextStyle? contentTextStyle;

  /// The z-coordinate at which to place this material banner relative to its parent.
  final double? elevation;

  /// The padding around the material banner's content.
  final PhlutsEdgeInsets? padding;

  /// The padding around the material banner's leading widget.
  final PhlutsEdgeInsets? leadingPadding;

  /// Creates a [PhlutsMaterialBannerThemeData] from JSON.
  factory PhlutsMaterialBannerThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsMaterialBannerThemeDataFromJson(json);

  /// Converts this material banner theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsMaterialBannerThemeDataToJson(this);
}
