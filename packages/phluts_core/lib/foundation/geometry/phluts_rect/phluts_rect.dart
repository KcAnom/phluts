import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/geometry/phluts_offset/phluts_offset.dart';

part 'phluts_rect.g.dart';

/// Types of rectangle construction methods supported by PhlutsRect.
enum PhlutsRectType {
  /// Create a rectangle from center point and dimensions.
  fromCenter,

  /// Create a rectangle from a circle's bounding box.
  fromCircle,

  /// Create a rectangle from left, top, right, bottom coordinates.
  fromLTRB,

  /// Create a rectangle from left, top, width, height values.
  fromLTWH,

  /// Create a rectangle from two corner points.
  fromPoints,
}

/// A Phluts representation of rectangles for geometric operations.
///
/// This class supports multiple construction methods for creating rectangles,
/// including from coordinates, dimensions, center points, and circles.
/// Different construction types use different parameter combinations.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// // Rectangle from coordinates
/// PhlutsRect(
///   rectType: PhlutsRectType.fromLTRB,
///   left: 10.0,
///   top: 20.0,
///   right: 100.0,
///   bottom: 80.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "rectType": "fromLTRB",
///   "left": 10.0,
///   "top": 20.0,
///   "right": 100.0,
///   "bottom": 80.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsRect implements PhlutsElement {
  /// Creates a rectangle using the specified construction method and parameters.
  PhlutsRect({
    required this.rectType,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.width,
    this.height,
    this.center,
    this.radius,
    this.a,
    this.b,
  });

  /// The method used to construct this rectangle.
  final PhlutsRectType rectType;

  /// The left coordinate (used with fromLTRB, fromLTWH).
  @DoubleConverter()
  final double? left;

  /// The top coordinate (used with fromLTRB, fromLTWH).
  @DoubleConverter()
  final double? top;

  /// The right coordinate (used with fromLTRB).
  @DoubleConverter()
  final double? right;

  /// The bottom coordinate (used with fromLTRB).
  @DoubleConverter()
  final double? bottom;

  /// The width (used with fromLTWH, fromCenter).
  @DoubleConverter()
  final double? width;

  /// The height (used with fromLTWH, fromCenter).
  @DoubleConverter()
  final double? height;

  /// The center point (used with fromCenter, fromCircle).
  final PhlutsOffset? center;

  /// The radius (used with fromCircle).
  @DoubleConverter()
  final double? radius;

  /// The first corner point (used with fromPoints).
  final PhlutsOffset? a;

  /// The second corner point (used with fromPoints).
  final PhlutsOffset? b;

  /// Creates a [PhlutsRect] from a JSON map.
  factory PhlutsRect.fromJson(Map<String, dynamic> json) =>
      _$PhlutsRectFromJson(json);

  /// Converts this [PhlutsRect] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsRectToJson(this);
}
