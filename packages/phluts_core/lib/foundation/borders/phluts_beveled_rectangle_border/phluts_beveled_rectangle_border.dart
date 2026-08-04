import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/foundation/borders/phluts_border_radius/phluts_border_radius.dart';
import 'package:phluts_core/foundation/borders/phluts_border_side/phluts_border_side.dart';
import 'package:phluts_core/foundation/borders/phluts_shape_border/phluts_shape_border.dart';

part 'phluts_beveled_rectangle_border.g.dart';

/// A Phluts model representing Flutter's [BeveledRectangleBorder].
///
/// A rectangular border with beveled corners, typically used with
/// [ShapeDecoration] to draw a box with a beveled rectangle shape.
///
/// ```dart
/// PhlutsBeveledRectangleBorder(
///   side: PhlutsBorderSide(width: 1.0, color: PhlutsColors.grey),
/// )
/// ```
///
/// ```json
/// {
///   "type": "beveledRectangleBorder",
///   "side": {"width": 1.0, "color": "#808080"}
/// }
/// ```
@JsonSerializable()
class PhlutsBeveledRectangleBorder extends PhlutsShapeBorder {
  /// Creates a [PhlutsBeveledRectangleBorder] with the given properties.
  const PhlutsBeveledRectangleBorder({super.side, this.borderRadius})
    : super(type: PhlutsShapeBorderType.beveledRectangleBorder);

  /// The radius for each corner.
  final PhlutsBorderRadius? borderRadius;

  /// Creates a [PhlutsBeveledRectangleBorder] from JSON.
  factory PhlutsBeveledRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$PhlutsBeveledRectangleBorderFromJson(json);

  /// Converts this beveled rectangle border to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsBeveledRectangleBorderToJson(this);
}
