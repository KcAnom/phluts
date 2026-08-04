import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/phluts_core.dart';

part 'phluts_box_decoration.g.dart';

/// A Phluts representation of box decoration for styling containers.
///
/// This class provides comprehensive decoration options for boxes including
/// colors, images, borders, shadows, gradients, and shapes. It corresponds
/// to Flutter's BoxDecoration class.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsBoxDecoration(
///   color: PhlutsColors.white,
///   border: PhlutsBorder(
///     color: PhlutsColors.grey,
///     width: 1.0,
///   ),
///   borderRadius: PhlutsBorderRadius.all(8.0),
///   boxShadow: [
///     PhlutsBoxShadow(
///       color: PhlutsColors.black,
///       blurRadius: 4.0,
///       offset: PhlutsOffset(dx: 0, dy: 2),
///     ),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#FFFFFF",
///   "border": {
///     "color": "#808080",
///     "width": 1.0
///   },
///   "borderRadius": {"all": 8.0},
///   "boxShadow": [{
///     "color": "#000000",
///     "blurRadius": 4.0,
///     "offset": {"dx": 0, "dy": 2}
///   }]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsBoxDecoration extends PhlutsElement {
  /// Creates a box decoration with optional styling properties.
  const PhlutsBoxDecoration({
    this.color,
    this.image,
    this.border,
    this.borderRadius,
    this.boxShadow,
    this.gradient,
    this.backgroundBlendMode,
    this.shape,
  });

  /// The background color of the box.
  final PhlutsColor? color;

  /// A background image for the box.
  final PhlutsDecorationImage? image;

  /// The border to draw around the box.
  final PhlutsBorder? border;

  /// The border radius for rounded corners.
  final PhlutsBorderRadius? borderRadius;

  /// A list of shadows to cast behind the box.
  final List<PhlutsBoxShadow>? boxShadow;

  /// A gradient to use as the background.
  ///
  /// If both [color] and [gradient] are specified, the gradient takes precedence.
  final PhlutsGradient? gradient;

  /// The blend mode to apply when painting the background color or gradient.
  final PhlutsBlendMode? backgroundBlendMode;

  /// The shape of the box (rectangle or circle).
  final PhlutsBoxShape? shape;

  /// Creates a [PhlutsBoxDecoration] from a JSON map.
  factory PhlutsBoxDecoration.fromJson(Map<String, dynamic> json) =>
      _$PhlutsBoxDecorationFromJson(json);

  /// Converts this [PhlutsBoxDecoration] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsBoxDecorationToJson(this);
}
