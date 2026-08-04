import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_card.g.dart';

/// A Phluts model representing Flutter's [Card] widget.
///
/// Displays material design cards with optional elevation, shape, colors,
/// margin, and clipping. Renders its [child].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsCard(
///   elevation: 2,
///   margin: PhlutsEdgeInsets.all(8),
///   child: PhlutsText(data: 'Hello'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "card",
///   "elevation": 2,
///   "margin": {"all": 8},
///   "child": {"type": "text", "data": "Hello"}
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Card documentation (`https://api.flutter.dev/flutter/material/Card-class.html`)
@JsonSerializable(explicitToJson: true)
class PhlutsCard extends PhlutsWidget {
  /// Creates a [PhlutsCard].
  const PhlutsCard({
    this.color,
    this.shadowColor,
    this.surfaceTintColor,
    this.elevation,
    this.shape,
    this.borderOnForeground,
    this.margin,
    this.clipBehavior,
    this.child,
    this.semanticContainer,
  });

  /// The background color of the card.
  final PhlutsColor? color;

  /// The color of the card's shadow.
  final PhlutsColor? shadowColor;

  /// The color used to tint the surface of this card.
  final PhlutsColor? surfaceTintColor;

  /// The z-coordinate of this card relative to its parent.
  @DoubleConverter()
  final double? elevation;

  /// The shape of the card's material.
  final PhlutsShapeBorder? shape;

  /// Whether to paint the border in front of the child.
  final bool? borderOnForeground;

  /// Empty space to surround the card.
  final PhlutsEdgeInsets? margin;

  /// How to clip the content.
  final PhlutsClip? clipBehavior;

  /// The widget below this card in the tree.
  final PhlutsWidget? child;

  /// Whether this card represents a semantic container.
  final bool? semanticContainer;

  /// Widget type identifier.
  @override
  String get type => WidgetType.card.name;

  /// Creates a [PhlutsCard] from a JSON map.
  factory PhlutsCard.fromJson(Map<String, dynamic> json) =>
      _$PhlutsCardFromJson(json);

  /// Converts this [PhlutsCard] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsCardToJson(this);
}
