import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/borders/phluts_border/phluts_border.dart';
import 'package:phluts_core/foundation/geometry/phluts_edge_insets/phluts_edge_insets.dart';
import 'package:phluts_core/foundation/layout/phluts_clip.dart';

part 'phluts_card_theme_data.g.dart';

/// A Phluts model representing Flutter's [CardThemeData].
///
/// Defines the theme for cards, including colors, elevation, shape, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsCardThemeData(
///   color: '#FFFFFF',
///   elevation: 2.0,
///   shadowColor: '#000000',
///   shape: PhlutsBorder(...),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#FFFFFF",
///   "elevation": 2.0,
///   "shadowColor": "#000000",
///   "surfaceTintColor": "#000000",
///   "clipBehavior": "antiAlias",
///   "margin": {"all": 8.0}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsCardThemeData implements PhlutsElement {
  /// Creates a [PhlutsCardThemeData] with the given properties.
  const PhlutsCardThemeData({
    this.clipBehavior,
    this.color,
    this.shadowColor,
    this.surfaceTintColor,
    this.elevation,
    this.margin,
    this.shape,
  });

  /// How to clip the card's content.
  final PhlutsClip? clipBehavior;

  /// The background color of the card.
  final String? color;

  /// The color of the card's shadow.
  final String? shadowColor;

  /// The color used to tint the surface of this card.
  final String? surfaceTintColor;

  /// The z-coordinate at which to place this card relative to its parent.
  final double? elevation;

  /// Empty space to surround the card.
  final PhlutsEdgeInsets? margin;

  /// The shape of the card's [Material].
  final PhlutsBorder? shape;

  /// Creates a [PhlutsCardThemeData] from JSON.
  factory PhlutsCardThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsCardThemeDataFromJson(json);

  /// Converts this card theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsCardThemeDataToJson(this);
}
