import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';

part 'phluts_size.g.dart';

/// A Phluts representation of a 2D size with width and height.
///
/// This class represents dimensions in 2D space, commonly used for specifying
/// the size of widgets, images, or other UI elements.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsSize(100.0, 200.0)
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "width": 100.0,
///   "height": 200.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsSize implements PhlutsElement {
  /// Creates a size with the specified width and height.
  const PhlutsSize(this.width, this.height);

  /// The width in logical pixels.
  final double width;

  /// The height in logical pixels.
  final double height;

  /// Creates a [PhlutsSize] from a JSON map.
  factory PhlutsSize.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSizeFromJson(json);

  /// Converts this [PhlutsSize] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSizeToJson(this);
}
