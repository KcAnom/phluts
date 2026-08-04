import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/foundation/borders/phluts_border_radius/phluts_border_radius.dart';
import 'package:phluts_core/foundation/borders/phluts_border_side/phluts_border_side.dart';
import 'package:phluts_core/foundation/borders/phluts_shape_border/phluts_shape_border.dart';

part 'phluts_rounded_rectangle_border.g.dart';

/// A Phluts model representing Flutter's [RoundedRectangleBorder].
///
/// A rectangular border with rounded corners, typically used with
/// [ShapeDecoration] to draw a box with a rounded rectangle.
///
/// ```dart
/// PhlutsRoundedRectangleBorder(
///   borderRadius: PhlutsBorderRadius.all(8.0),
///   side: PhlutsBorderSide(width: 1.0, color: PhlutsColors.grey),
/// )
/// ```
///
/// ```json
/// {
///   "type": "roundedRectangle",
///   "borderRadius": {"all": 8.0},
///   "side": {"width": 1.0, "color": "#808080"}
/// }
/// ```
@JsonSerializable()
class PhlutsRoundedRectangleBorder extends PhlutsShapeBorder {
  /// Creates a [PhlutsRoundedRectangleBorder] with the given properties.
  const PhlutsRoundedRectangleBorder({super.side, this.borderRadius})
    : super(type: PhlutsShapeBorderType.roundedRectangleBorder);

  /// The border radius for the rounded corners.
  final PhlutsBorderRadius? borderRadius;

  /// Creates a [PhlutsRoundedRectangleBorder] from JSON.
  factory PhlutsRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$PhlutsRoundedRectangleBorderFromJson(json);

  /// Converts this rounded rectangle border to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsRoundedRectangleBorderToJson(this);
}
