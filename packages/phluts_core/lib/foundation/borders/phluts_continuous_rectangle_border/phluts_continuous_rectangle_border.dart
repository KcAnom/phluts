import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/foundation/borders/phluts_border_radius/phluts_border_radius.dart';
import 'package:phluts_core/foundation/borders/phluts_border_side/phluts_border_side.dart';
import 'package:phluts_core/foundation/borders/phluts_shape_border/phluts_shape_border.dart';

part 'phluts_continuous_rectangle_border.g.dart';

/// A Phluts model representing Flutter's [ContinuousRectangleBorder].
///
/// A rectangular border with continuous rounded corners, typically used with
/// [ShapeDecoration] to draw a box with a continuous rectangle shape.
///
/// ```dart
/// PhlutsContinuousRectangleBorder(
///   side: PhlutsBorderSide(width: 1.0, color: PhlutsColors.grey),
/// )
/// ```
///
/// ```json
/// {
///   "type": "continuousRectangleBorder",
///   "side": {"width": 1.0, "color": "#808080"}
/// }
/// ```
@JsonSerializable()
class PhlutsContinuousRectangleBorder extends PhlutsShapeBorder {
  /// Creates a [PhlutsContinuousRectangleBorder] with the given properties.
  const PhlutsContinuousRectangleBorder({super.side, this.borderRadius})
    : super(type: PhlutsShapeBorderType.continuousRectangleBorder);

  /// The radius for each corner.
  final PhlutsBorderRadius? borderRadius;

  /// Creates a [PhlutsContinuousRectangleBorder] from JSON.
  factory PhlutsContinuousRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$PhlutsContinuousRectangleBorderFromJson(json);

  /// Converts this continuous rectangle border to JSON.
  @override
  Map<String, dynamic> toJson() =>
      _$PhlutsContinuousRectangleBorderToJson(this);
}
