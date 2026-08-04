import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/borders/phluts_border_radius/phluts_border_radius.dart';
import 'package:phluts_core/foundation/effects/phluts_gradient/phluts_gradient.dart';

part 'phluts_input_border.g.dart';

/// Type of input border to render.
///
/// Mirrors Flutter's `InputBorder` variants commonly used by text fields.
///
/// - [none]: Renders no border.
/// - [underlineInputBorder]: Renders a Material underline-style border.
/// - [outlineInputBorder]: Renders a rounded rectangle outline border.
enum PhlutsInputBorderType {
  /// Renders no border.
  none,

  /// Renders a Material underline-style border.
  underlineInputBorder,

  /// Renders a rounded rectangle outline border.
  outlineInputBorder,
}

/// A Phluts model for Flutter input borders.
///
/// Represents configurable input borders (e.g., outline or underline) that can
/// be referenced from higher-level themes such as `PhlutsInputDecorationTheme`.
@JsonSerializable()
class PhlutsInputBorder extends PhlutsElement {
  /// Creates a [PhlutsInputBorder] with the given properties.
  const PhlutsInputBorder({
    this.type = PhlutsInputBorderType.underlineInputBorder,
    this.borderRadius,
    @DoubleConverter() this.gapPadding,
    @DoubleConverter() this.width,
    this.color,
    this.gradient,
  });

  /// The kind of border to draw.
  final PhlutsInputBorderType type;

  /// Corner radii for outline or underline borders.
  final PhlutsBorderRadius? borderRadius;

  /// Padding around the notch in an `OutlineInputBorder`.
  /// Only applicable when [type] is [PhlutsInputBorderType.outlineInputBorder].
  @DoubleConverter()
  final double? gapPadding;

  /// Stroke width for the border line.
  @DoubleConverter()
  final double? width;

  /// Border color. Accepts a hex string or named/theme color.
  final String? color;

  /// Optional gradient used by custom outline implementations.
  final PhlutsGradient? gradient;

  /// Creates a [PhlutsInputBorder] from a JSON map.
  factory PhlutsInputBorder.fromJson(Map<String, dynamic> json) =>
      _$PhlutsInputBorderFromJson(json);

  /// Converts this [PhlutsInputBorder] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsInputBorderToJson(this);
}
