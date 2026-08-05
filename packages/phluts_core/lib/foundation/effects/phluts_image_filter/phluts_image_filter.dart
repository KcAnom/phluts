import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';

part 'phluts_image_filter.g.dart';

/// Types of image filters supported by the Phluts framework.
///
/// Note: Shader filters are not currently supported.
enum PhlutsImageFilterType {
  /// Gaussian blur filter that blurs the image.
  blur,

  /// Matrix transformation filter that applies a 4x4 transformation matrix.
  matrix,

  /// Dilate filter that expands bright areas of the image.
  dilate,

  /// Erode filter that contracts bright areas of the image.
  erode,

  /// Compose filter that combines two filters sequentially.
  compose,
}

/// A Phluts model representing Flutter's ImageFilter.
///
/// Provides named constructors for a familiar API. JSON uses a flat shape with
/// a required `type` field and associated properties.
///
/// Dart Example:
/// ```dart
/// PhlutsImageFilter.blur(sigmaX: 10, sigmaY: 12)
/// ```
///
/// JSON Example:
/// ```json
/// { "type": "blur", "sigmaX": 10, "sigmaY": 12 }
/// ```
@JsonSerializable(explicitToJson: true)
class PhlutsImageFilter {
  /// Creates an image filter with the specified type and parameters.
  const PhlutsImageFilter({
    required this.type,
    this.sigmaX,
    this.sigmaY,
    this.radiusX,
    this.radiusY,
    this.matrix,
    this.inner,
    this.outer,
  });

  /// Creates a blur filter.
  ///
  /// - [sigmaX]: Standard deviation in the horizontal direction.
  /// - [sigmaY]: Standard deviation in the vertical direction. Defaults to [sigmaX] when omitted.
  const PhlutsImageFilter.blur({required double sigmaX, double? sigmaY})
    : this(type: PhlutsImageFilterType.blur, sigmaX: sigmaX, sigmaY: sigmaY);

  /// Creates a matrix filter.
  ///
  /// - [matrix]: A 4x4 transformation matrix (length 16).
  const PhlutsImageFilter.matrix({required List<double> matrix})
    : this(type: PhlutsImageFilterType.matrix, matrix: matrix);

  /// Creates a dilate filter.
  ///
  /// - [radiusX]: Horizontal radius.
  /// - [radiusY]: Vertical radius. Defaults to [radiusX] when omitted.
  const PhlutsImageFilter.dilate({required double radiusX, double? radiusY})
    : this(
        type: PhlutsImageFilterType.dilate,
        radiusX: radiusX,
        radiusY: radiusY,
      );

  /// Creates an erode filter.
  ///
  /// - [radiusX]: Horizontal radius.
  /// - [radiusY]: Vertical radius. Defaults to [radiusX] when omitted.
  const PhlutsImageFilter.erode({required double radiusX, double? radiusY})
    : this(
        type: PhlutsImageFilterType.erode,
        radiusX: radiusX,
        radiusY: radiusY,
      );

  /// Composes two filters where [inner] is applied first, then [outer].
  const PhlutsImageFilter.compose({
    required PhlutsImageFilter inner,
    required PhlutsImageFilter outer,
  }) : this(type: PhlutsImageFilterType.compose, inner: inner, outer: outer);

  /// The type of image filter to apply.
  final PhlutsImageFilterType type;

  /// Standard deviation for blur in the horizontal direction.
  @DoubleConverter()
  final double? sigmaX;

  /// Standard deviation for blur in the vertical direction.
  @DoubleConverter()
  final double? sigmaY;

  /// Horizontal radius for dilate/erode filters.
  @DoubleConverter()
  final double? radiusX;

  /// Vertical radius for dilate/erode filters.
  @DoubleConverter()
  final double? radiusY;

  /// 4x4 transformation matrix for matrix filters (length 16).
  final List<double>? matrix;

  /// Inner filter for compose operations (applied first).
  final PhlutsImageFilter? inner;

  /// Outer filter for compose operations (applied second).
  final PhlutsImageFilter? outer;

  /// Creates a [PhlutsImageFilter] from a JSON map.
  factory PhlutsImageFilter.fromJson(Map<String, dynamic> json) =>
      _$PhlutsImageFilterFromJson(json);

  /// Converts this [PhlutsImageFilter] instance to a JSON map.
  Map<String, dynamic> toJson() => _$PhlutsImageFilterToJson(this);
}
