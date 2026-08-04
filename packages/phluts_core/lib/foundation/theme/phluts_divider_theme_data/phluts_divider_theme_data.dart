import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';

part 'phluts_divider_theme_data.g.dart';

/// A Phluts model representing Flutter's [DividerThemeData].
///
/// Defines the theme for dividers, including color, thickness, spacing, and indentation.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsDividerThemeData(
///   color: '#BDBDBD',
///   thickness: 1.0,
///   space: 16.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#BDBDBD",
///   "thickness": 1.0,
///   "space": 16.0,
///   "indent": 0.0,
///   "endIndent": 0.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsDividerThemeData implements PhlutsElement {
  /// Creates a [PhlutsDividerThemeData] with the given properties.
  const PhlutsDividerThemeData({
    this.color,
    this.space,
    this.thickness,
    this.indent,
    this.endIndent,
  });

  /// The color of the divider.
  final String? color;

  /// The vertical space around the divider.
  final double? space;

  /// The thickness of the divider line.
  final double? thickness;

  /// The amount of empty space to the leading edge of the divider.
  final double? indent;

  /// The amount of empty space to the trailing edge of the divider.
  final double? endIndent;

  /// Creates a [PhlutsDividerThemeData] from JSON.
  factory PhlutsDividerThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDividerThemeDataFromJson(json);

  /// Converts this divider theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsDividerThemeDataToJson(this);
}
