import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';

part 'phluts_box_constraints.g.dart';

/// A Phluts representation of box constraints for layout sizing.
///
/// This class defines the minimum and maximum width and height constraints
/// that can be applied to widgets during layout. It helps control how widgets
/// size themselves within their available space.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsBoxConstraints(
///   minWidth: 100,
///   maxWidth: 300,
///   minHeight: 50,
///   maxHeight: 200,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "minWidth": 100,
///   "maxWidth": 300,
///   "minHeight": 50,
///   "maxHeight": 200
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsBoxConstraints {
  /// Creates box constraints with optional minimum and maximum dimensions.
  const PhlutsBoxConstraints({
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
  });

  /// The minimum width constraint in logical pixels.
  @DoubleConverter()
  final double? minWidth;

  /// The maximum width constraint in logical pixels.
  @DoubleConverter()
  final double? maxWidth;

  /// The minimum height constraint in logical pixels.
  @DoubleConverter()
  final double? minHeight;

  /// The maximum height constraint in logical pixels.
  @DoubleConverter()
  final double? maxHeight;

  /// Creates a [PhlutsBoxConstraints] from a JSON map.
  factory PhlutsBoxConstraints.fromJson(Map<String, dynamic> json) =>
      _$PhlutsBoxConstraintsFromJson(json);

  /// Converts this [PhlutsBoxConstraints] instance to a JSON map.
  Map<String, dynamic> toJson() => _$PhlutsBoxConstraintsToJson(this);
}
