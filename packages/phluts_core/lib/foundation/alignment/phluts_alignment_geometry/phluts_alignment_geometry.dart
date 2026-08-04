import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';

part 'phluts_alignment_geometry.g.dart';

/// A Phluts representation of Flutter's [AlignmentGeometry] class.
///
/// This class represents an alignment that can be used to position widgets
/// within their parent. It supports both horizontal (dx) and vertical (dy)
/// alignment values, where -1.0 represents the start/top, 0.0 represents
/// the center, and 1.0 represents the end/bottom.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsAlignmentGeometry(dx: 0.0, dy: -1.0) // Top center
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "dx": 0.0,
///   "dy": -1.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsAlignmentGeometry extends PhlutsElement {
  /// Creates an alignment geometry with the specified horizontal and vertical values.
  const PhlutsAlignmentGeometry({required this.dx, required this.dy});

  /// The horizontal alignment value.
  /// -1.0 represents the start (left in LTR, right in RTL)
  /// 0.0 represents the center
  /// 1.0 represents the end (right in LTR, left in RTL)
  @DoubleConverter()
  final double dx;

  /// The vertical alignment value.
  /// -1.0 represents the top
  /// 0.0 represents the center
  /// 1.0 represents the bottom
  @DoubleConverter()
  final double dy;

  /// Creates a [PhlutsAlignmentGeometry] from a JSON map.
  factory PhlutsAlignmentGeometry.fromJson(Map<String, dynamic> json) =>
      _$PhlutsAlignmentGeometryFromJson(json);

  /// Converts this [PhlutsAlignmentGeometry] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsAlignmentGeometryToJson(this);
}
