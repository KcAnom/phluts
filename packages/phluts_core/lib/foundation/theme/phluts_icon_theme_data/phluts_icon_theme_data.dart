import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/effects/phluts_shadow/phluts_shadow.dart';

part 'phluts_icon_theme_data.g.dart';

/// A Phluts model representing Flutter's [IconThemeData].
///
/// Defines the theme for icons, including size, color, opacity, and visual properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsIconThemeData(
///   color: '#2196F3',
///   size: 24.0,
///   opacity: 1.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#2196F3",
///   "size": 24.0,
///   "opacity": 1.0,
///   "fill": 0.0,
///   "weight": 400.0,
///   "grade": 0.0,
///   "opticalSize": 24.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsIconThemeData implements PhlutsElement {
  /// Creates a [PhlutsIconThemeData] with the given properties.
  const PhlutsIconThemeData({
    this.size,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.color,
    this.opacity,
    this.shadows,
  });

  /// The size of the icon in logical pixels.
  final double? size;

  /// The fill value for the icon (0.0 to 1.0).
  final double? fill;

  /// The weight value for the icon (100 to 900).
  final double? weight;

  /// The grade value for the icon (-25 to 200).
  final double? grade;

  /// The optical size for the icon in logical pixels.
  final double? opticalSize;

  /// The color of the icon.
  final String? color;

  /// The opacity of the icon (0.0 to 1.0).
  final double? opacity;

  /// The list of shadows to apply to the icon.
  final List<PhlutsShadow>? shadows;

  /// Creates a [PhlutsIconThemeData] from JSON.
  factory PhlutsIconThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsIconThemeDataFromJson(json);

  /// Converts this icon theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsIconThemeDataToJson(this);
}
