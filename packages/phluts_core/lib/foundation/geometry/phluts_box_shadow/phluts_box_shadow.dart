import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/colors/phluts_color/phluts_colors.dart';
import 'package:phluts_core/foundation/effects/phluts_blur_style.dart';
import 'package:phluts_core/foundation/geometry/phluts_offset/phluts_offset.dart';

part 'phluts_box_shadow.g.dart';

/// A Phluts representation of box shadows for visual depth effects.
///
/// This class defines shadow properties that can be applied to containers
/// and other UI elements to create depth and visual hierarchy. It supports
/// color, blur radius, offset, spread radius, and blur style customization.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsBoxShadow(
///   color: PhlutsColors.black,
///   blurRadius: 10.0,
///   offset: PhlutsOffset(dx: 2.0, dy: 4.0),
///   spreadRadius: 1.0,
///   blurStyle: PhlutsBlurStyle.normal,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#000000",
///   "blurRadius": 10.0,
///   "offset": {"dx": 2.0, "dy": 4.0},
///   "spreadRadius": 1.0,
///   "blurStyle": "normal"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsBoxShadow implements PhlutsElement {
  /// Creates a box shadow with optional styling properties.
  const PhlutsBoxShadow({
    this.color,
    this.blurRadius,
    this.offset,
    this.spreadRadius,
    this.blurStyle,
  });

  /// The color of the shadow.
  final PhlutsColor? color;

  /// The blur radius of the shadow in logical pixels.
  ///
  /// A larger value creates a more diffused shadow effect.
  @DoubleConverter()
  final double? blurRadius;

  /// The offset position of the shadow relative to the element.
  final PhlutsOffset? offset;

  /// The spread radius of the shadow in logical pixels.
  ///
  /// Positive values cause the shadow to expand, negative values cause it to contract.
  @DoubleConverter()
  final double? spreadRadius;

  /// The style of blur to apply to the shadow.
  final PhlutsBlurStyle? blurStyle;

  /// Creates a [PhlutsBoxShadow] from a JSON map.
  factory PhlutsBoxShadow.fromJson(Map<String, dynamic> json) =>
      _$PhlutsBoxShadowFromJson(json);

  /// Converts this [PhlutsBoxShadow] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsBoxShadowToJson(this);
}
