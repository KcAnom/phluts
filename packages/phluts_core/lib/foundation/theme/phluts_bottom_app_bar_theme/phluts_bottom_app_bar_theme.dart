import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/geometry/phluts_edge_insets/phluts_edge_insets.dart';

part 'phluts_bottom_app_bar_theme.g.dart';

/// A Phluts model representing Flutter's [BottomAppBarTheme].
///
/// Defines the theme for bottom app bars, including colors, elevation, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsBottomAppBarThemeData(
///   color: '#FFFFFF',
///   elevation: 8.0,
///   height: 56.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#FFFFFF",
///   "elevation": 8.0,
///   "height": 56.0,
///   "surfaceTintColor": "#000000",
///   "shadowColor": "#000000",
///   "padding": {"all": 8.0}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsBottomAppBarThemeData implements PhlutsElement {
  /// Creates a [PhlutsBottomAppBarThemeData] with the given properties.
  const PhlutsBottomAppBarThemeData({
    this.color,
    this.elevation,
    this.height,
    this.surfaceTintColor,
    this.shadowColor,
    this.padding,
  });

  /// The background color of the bottom app bar.
  final String? color;

  /// The z-coordinate at which to place this bottom app bar relative to its parent.
  final double? elevation;

  /// The height of the bottom app bar.
  final double? height;

  /// The color used to tint the surface of this bottom app bar.
  final String? surfaceTintColor;

  /// The color of the shadow below the bottom app bar.
  final String? shadowColor;

  /// The padding around the bottom app bar's content.
  final PhlutsEdgeInsets? padding;

  /// Creates a [PhlutsBottomAppBarThemeData] from JSON.
  factory PhlutsBottomAppBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsBottomAppBarThemeDataFromJson(json);

  /// Converts this bottom app bar theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsBottomAppBarThemeDataToJson(this);
}
