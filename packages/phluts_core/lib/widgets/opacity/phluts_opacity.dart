import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_opacity.g.dart';

/// A Phluts model representing Flutter's [Opacity] widget.
///
/// A widget that makes its child partially transparent.
///
/// ```dart
/// PhlutsOpacity(
///   opacity: 0.5,
///   alwaysIncludeSemantics: false,
///   child: PhlutsText(data: 'Faded Text'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "opacity",
///   "opacity": 0.5,
///   "alwaysIncludeSemantics": false,
///   "child": {"type": "text", "data": "Faded Text"}
/// }
/// ```
@JsonSerializable()
class PhlutsOpacity extends PhlutsWidget {
  /// Creates a [PhlutsOpacity] with the given properties.
  const PhlutsOpacity({
    required this.opacity,
    this.alwaysIncludeSemantics,
    this.child,
  });

  /// The fraction to scale the child's alpha value.
  /// An opacity of 1.0 is fully opaque. An opacity of 0.0 is fully transparent.
  @DoubleConverter()
  final double opacity;

  /// Whether to include the opacity widget in the semantics tree.
  /// Defaults to false.
  final bool? alwaysIncludeSemantics;

  /// The widget below this widget in the tree.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.opacity.name;

  /// Creates a [PhlutsOpacity] from JSON.
  factory PhlutsOpacity.fromJson(Map<String, dynamic> json) =>
      _$PhlutsOpacityFromJson(json);

  /// Converts this PhlutsOpacity to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsOpacityToJson(this);
}
