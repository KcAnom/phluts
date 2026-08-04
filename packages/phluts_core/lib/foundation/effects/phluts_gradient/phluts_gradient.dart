import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/foundation/alignment/phluts_alignment.dart';
import 'package:phluts_core/foundation/colors/phluts_color/phluts_colors.dart';

part 'phluts_gradient.g.dart';

/// Types of gradients supported by the Phluts framework.
enum PhlutsGradientType {
  /// A linear gradient that transitions colors along a straight line.
  linear,

  /// A radial gradient that transitions colors in a circular pattern from center outward.
  radial,

  /// A sweep gradient that transitions colors in a circular sweep around a center point.
  sweep,
}

/// Tile modes that determine how gradients handle areas outside their defined bounds.
enum PhlutsTileMode {
  /// Clamp the gradient to the edge colors.
  clamp,

  /// Repeat the gradient pattern.
  repeated,

  /// Mirror the gradient pattern.
  mirror,

  /// Use transparent pixels outside the gradient bounds.
  decal,
}

/// A Phluts representation of gradients for visual effects.
///
/// This class supports linear, radial, and sweep gradients with customizable
/// colors, stops, and positioning. Gradients can be used for backgrounds,
/// text styling, and other visual effects.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsLinearGradient(
///   colors: [PhlutsColors.blue, PhlutsColors.red],
///   stops: [0.0, 1.0],
///   begin: PhlutsAlignment.topLeft,
///   end: PhlutsAlignment.bottomRight,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "gradientType": "linear",
///   "colors": ["#2196F3", "#F44336"],
///   "stops": [0.0, 1.0],
///   "begin": "topLeft",
///   "end": "bottomRight"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsGradient {
  /// Creates a gradient with optional configuration parameters.
  const PhlutsGradient({
    this.gradientType,
    this.colors,
    this.stops,
    this.begin,
    this.end,
    this.center,
    this.focal,
    this.tileMode,
    this.focalRadius,
    this.radius,
    this.startAngle,
    this.endAngle,
  });

  /// Creates a linear gradient.
  ///
  /// Example:
  /// ```dart
  /// PhlutsLinearGradient(
  ///   colors: [PhlutsColors.blue, PhlutsColors.red],
  ///   begin: PhlutsAlignment.topLeft,
  ///   end: PhlutsAlignment.bottomRight,
  ///   stops: [0.0, 1.0],
  /// )
  /// ```
  const PhlutsGradient.linear({
    required this.colors,
    this.stops,
    this.begin,
    this.end,
    this.tileMode,
  }) : gradientType = PhlutsGradientType.linear,
       center = null,
       focal = null,
       focalRadius = null,
       radius = null,
       startAngle = null,
       endAngle = null;

  /// Creates a radial gradient.
  ///
  /// Example:
  /// ```dart
  /// PhlutsRadialGradient(
  ///   colors: [PhlutsColors.blue, PhlutsColors.red],
  ///   center: PhlutsAlignment.center,
  ///   radius: 0.5,
  ///   stops: [0.0, 1.0],
  /// )
  /// ```
  const PhlutsGradient.radial({
    required this.colors,
    this.stops,
    this.center,
    this.focal,
    this.focalRadius,
    this.radius,
    this.tileMode,
  }) : gradientType = PhlutsGradientType.radial,
       begin = null,
       end = null,
       startAngle = null,
       endAngle = null;

  /// Creates a sweep gradient.
  ///
  /// Example:
  /// ```dart
  /// PhlutsSweepGradient(
  ///   colors: [PhlutsColors.blue, PhlutsColors.red],
  ///   center: PhlutsAlignment.center,
  ///   startAngle: 0.0,
  ///   endAngle: 3.14159,
  ///   stops: [0.0, 1.0],
  /// )
  /// ```
  const PhlutsGradient.sweep({
    required this.colors,
    this.stops,
    this.center,
    this.startAngle,
    this.endAngle,
    this.tileMode,
  }) : gradientType = PhlutsGradientType.sweep,
       begin = null,
       end = null,
       focal = null,
       focalRadius = null,
       radius = null;

  /// The type of gradient (linear, radial, or sweep).
  final PhlutsGradientType? gradientType;

  /// The list of colors used in the gradient.
  final List<PhlutsColor>? colors;

  /// The stop positions for each color (values between 0.0 and 1.0).
  final List<double>? stops;

  /// The starting alignment for linear gradients.
  final PhlutsAlignment? begin;

  /// The ending alignment for linear gradients.
  final PhlutsAlignment? end;

  /// The center alignment for radial and sweep gradients.
  final PhlutsAlignment? center;

  /// The focal point alignment for radial gradients.
  final PhlutsAlignment? focal;

  /// How the gradient should handle areas outside its bounds.
  final PhlutsTileMode? tileMode;

  /// The radius of the focal point for radial gradients.
  final double? focalRadius;

  /// The radius for radial gradients.
  final double? radius;

  /// The starting angle for sweep gradients (in radians).
  final double? startAngle;

  /// The ending angle for sweep gradients (in radians).
  final double? endAngle;

  /// Creates a [PhlutsGradient] from a JSON map.
  factory PhlutsGradient.fromJson(Map<String, dynamic> json) =>
      _$PhlutsGradientFromJson(json);

  /// Converts this [PhlutsGradient] instance to a JSON map.
  Map<String, dynamic> toJson() => _$PhlutsGradientToJson(this);
}

/// A linear gradient that transitions colors along a straight line.
///
/// This is a convenience constructor for [PhlutsGradient.linear] for a more Flutter-like API.
/// Colors transition from [begin] to [end] alignment points.
///
/// Example:
/// ```dart
/// PhlutsLinearGradient(
///   colors: [PhlutsColors.blue, PhlutsColors.red],
///   begin: PhlutsAlignment.topLeft,
///   end: PhlutsAlignment.bottomRight,
///   stops: [0.0, 1.0],
/// )
/// ```
// ignore: constant_identifier_names
const PhlutsLinearGradient = PhlutsGradient.linear;

/// A radial gradient that transitions colors in a circular pattern from center outward.
///
/// This is a convenience constructor for [PhlutsGradient.radial] for a more Flutter-like API.
/// Colors transition from the center point outward in a circular pattern.
///
/// Example:
/// ```dart
/// PhlutsRadialGradient(
///   colors: [PhlutsColors.blue, PhlutsColors.red],
///   center: PhlutsAlignment.center,
///   radius: 0.5,
///   stops: [0.0, 1.0],
/// )
/// ```
// ignore: constant_identifier_names
const PhlutsRadialGradient = PhlutsGradient.radial;

/// A sweep gradient that transitions colors in a circular sweep around a center point.
///
/// This is a convenience constructor for [PhlutsGradient.sweep] for a more Flutter-like API.
/// Colors transition in a circular sweep around the center point.
///
/// Example:
/// ```dart
/// PhlutsSweepGradient(
///   colors: [PhlutsColors.blue, PhlutsColors.red],
///   center: PhlutsAlignment.center,
///   startAngle: 0.0,
///   endAngle: 3.14159,
///   stops: [0.0, 1.0],
/// )
/// ```
// ignore: constant_identifier_names
const PhlutsSweepGradient = PhlutsGradient.sweep;
