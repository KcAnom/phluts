import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_placeholder.g.dart';

/// A Phluts model representing Flutter's [Placeholder] widget.
///
/// Draws a simple box to visualize where a widget will be added in the future.
/// Useful during development to indicate unimplemented parts of the UI.
///
/// Dart Example:
/// ```dart
/// PhlutsPlaceholder(
///   fallbackWidth: 200,
///   fallbackHeight: 100,
///   strokeWidth: 2,
/// )
/// ```
///
/// JSON Example:
/// ```json
/// {
///   "type": "placeholder",
///   "fallbackWidth": 200,
///   "fallbackHeight": 100,
///   "strokeWidth": 2
/// }
/// ```
///
/// See also:
///  * Flutter's Placeholder documentation (`https://api.flutter.dev/flutter/widgets/Placeholder-class.html`)
@JsonSerializable(explicitToJson: true)
class PhlutsPlaceholder extends PhlutsWidget {
  /// Creates a [PhlutsPlaceholder].
  const PhlutsPlaceholder({
    this.fallbackWidth,
    this.fallbackHeight,
    this.strokeWidth,
    this.color,
    this.child,
  });

  /// The width to use when the placeholder has unconstrained width.
  @DoubleConverter()
  final double? fallbackWidth;

  /// The height to use when the placeholder has unconstrained height.
  @DoubleConverter()
  final double? fallbackHeight;

  /// The stroke width used to draw the placeholder borders.
  @DoubleConverter()
  final double? strokeWidth;

  /// The color of the placeholder's stroke.
  final String? color;

  /// Optional child to display inside the placeholder.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.placeholder.name;

  /// Creates a [PhlutsPlaceholder] from a JSON map.
  factory PhlutsPlaceholder.fromJson(Map<String, dynamic> json) =>
      _$PhlutsPlaceholderFromJson(json);

  /// Converts this [PhlutsPlaceholder] to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsPlaceholderToJson(this);
}
