import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';

part 'phluts_offset.g.dart';

/// A Phluts representation of a 2D offset (displacement).
///
/// This class represents a displacement in 2D space with horizontal (dx) and
/// vertical (dy) components. It's commonly used for positioning elements,
/// defining shadow offsets, or specifying translation transformations.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsOffset(dx: 10.0, dy: 20.0)
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "dx": 10.0,
///   "dy": 20.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsOffset implements PhlutsElement {
  /// Creates an offset with the specified horizontal and vertical displacements.
  const PhlutsOffset({required this.dx, required this.dy});

  /// A constant representing zero offset (no displacement).
  static const PhlutsOffset zero = PhlutsOffset(dx: 0, dy: 0);

  /// The horizontal displacement in logical pixels.
  final double dx;

  /// The vertical displacement in logical pixels.
  final double dy;

  /// Creates a [PhlutsOffset] from a JSON map.
  factory PhlutsOffset.fromJson(Map<String, dynamic> json) =>
      _$PhlutsOffsetFromJson(json);

  /// Converts this [PhlutsOffset] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsOffsetToJson(this);
}
