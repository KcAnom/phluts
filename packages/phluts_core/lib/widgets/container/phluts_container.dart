import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_container.g.dart';

/// A Phluts model representing Flutter's [Container] widget.
///
/// Combines styling, positioning, and sizing properties for child widgets.
/// Supports padding, margins, colors, decorations, sizing, and alignment.
///
/// ```dart
/// PhlutsContainer(
///   padding: PhlutsEdgeInsets.all(16.0),
///   color: PhlutsColors.red,
///   child: PhlutsText(data: 'Hello'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "container",
///   "padding": {"all": 16.0},
///   "color": "#FF0000",
///   "child": {"type": "text", "data": "Hello"}
/// }
/// ```
@JsonSerializable()
class PhlutsContainer extends PhlutsWidget {
  /// Creates a [PhlutsContainer] with optional styling properties.
  const PhlutsContainer({
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.transformAlignment,
    this.child,
    this.clipBehavior,
  });

  /// How to align the [child] within the container.
  final PhlutsAlignment? alignment;

  /// Inner spacing around the [child].
  final PhlutsEdgeInsets? padding;

  /// Background color. Cannot be used with [decoration].
  final PhlutsColor? color;

  /// Background decoration (borders, gradients, shadows).
  final PhlutsBoxDecoration? decoration;

  /// Foreground decoration painted over the [child].
  final PhlutsBoxDecoration? foregroundDecoration;

  /// Fixed width. If null, expands to fill available space.
  /// Supports string values like "20" or "infinite".
  @DoubleConverter()
  final double? width;

  /// Fixed height. If null, expands to fill available space.
  /// Supports string values like "20" or "infinite".
  @DoubleConverter()
  final double? height;

  /// Size constraints for the container.
  final PhlutsBoxConstraints? constraints;

  /// Outer spacing around the container.
  final PhlutsEdgeInsets? margin;

  /// Transform alignment for the container.
  final PhlutsAlignment? transformAlignment;

  /// The child widget contained within this container.
  final PhlutsWidget? child;

  /// How to clip the container's content.
  final PhlutsClip? clipBehavior;

  /// Widget type identifier.
  @override
  String get type => WidgetType.container.name;

  /// Creates a [PhlutsContainer] from JSON.
  factory PhlutsContainer.fromJson(Map<String, dynamic> json) =>
      _$PhlutsContainerFromJson(json);

  /// Converts this container to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsContainerToJson(this);
}
