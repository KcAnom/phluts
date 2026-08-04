import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/geometry/phluts_offset/phluts_offset.dart';

part 'phluts_shadow.g.dart';

/// A Phluts representation of shadows for visual effects.
///
/// This class defines shadow properties including color, offset, and blur radius.
/// Shadows can be applied to various UI elements to create depth and visual hierarchy.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsShadow(
///   color: '#000000',
///   offset: PhlutsOffset(2.0, 4.0),
///   blurRadius: 6.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#000000",
///   "offset": {"dx": 2.0, "dy": 4.0},
///   "blurRadius": 6.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsShadow implements PhlutsElement {
  /// Creates a shadow with optional color, offset, and blur radius.
  const PhlutsShadow({this.color, this.offset, this.blurRadius});

  /// The shadow color as hex string or theme color name.
  ///
  /// Examples: '#FF0000', 'red', 'primary'
  final String? color;

  /// The offset position of the shadow relative to the element.
  final PhlutsOffset? offset;

  /// The blur radius of the shadow in logical pixels.
  ///
  /// A larger value creates a more diffused shadow effect.
  @DoubleConverter()
  final double? blurRadius;

  /// Creates a [PhlutsShadow] from a JSON map.
  factory PhlutsShadow.fromJson(Map<String, dynamic> json) =>
      _$PhlutsShadowFromJson(json);

  /// Converts this [PhlutsShadow] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsShadowToJson(this);
}
