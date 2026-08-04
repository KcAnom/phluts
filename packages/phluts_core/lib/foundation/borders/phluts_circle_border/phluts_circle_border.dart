import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/foundation/borders/phluts_border_side/phluts_border_side.dart';
import 'package:phluts_core/foundation/borders/phluts_shape_border/phluts_shape_border.dart';

part 'phluts_circle_border.g.dart';

/// A Phluts model representing Flutter's [CircleBorder].
///
/// A circular border, typically used with [ShapeDecoration] to draw
/// a box with a circular shape.
///
/// ```dart
/// PhlutsCircleBorder(
///   side: PhlutsBorderSide(width: 1.0, color: PhlutsColors.grey),
/// )
/// ```
///
/// ```json
/// {
///   "type": "circleBorder",
///   "side": {"width": 1.0, "color": "#808080"}
/// }
/// ```
@JsonSerializable()
class PhlutsCircleBorder extends PhlutsShapeBorder {
  /// Creates a [PhlutsCircleBorder] with the given properties.
  const PhlutsCircleBorder({super.side, this.eccentricity})
    : super(type: PhlutsShapeBorderType.circleBorder);

  /// The eccentricity of the circle.
  final double? eccentricity;

  /// Creates a [PhlutsCircleBorder] from JSON.
  factory PhlutsCircleBorder.fromJson(Map<String, dynamic> json) =>
      _$PhlutsCircleBorderFromJson(json);

  /// Converts this circle border to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsCircleBorderToJson(this);
}
