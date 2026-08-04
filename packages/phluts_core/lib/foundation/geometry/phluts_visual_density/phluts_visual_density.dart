import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';

part 'phluts_visual_density.g.dart';

/// A Phluts model representing Flutter's [VisualDensity] class.
///
/// Defines the visual density of a widget, which affects the size of
/// interactive elements like buttons and form fields.
///
/// ```dart
/// PhlutsVisualDensity(
///   horizontal: -1.0,
///   vertical: -1.0,
/// )
/// ```
///
/// ```json
/// {
///   "horizontal": -1.0,
///   "vertical": -1.0
/// }
/// ```
@JsonSerializable()
class PhlutsVisualDensity extends PhlutsElement {
  /// Creates a [PhlutsVisualDensity] with the given density values.
  const PhlutsVisualDensity({this.horizontal, this.vertical});

  /// The horizontal density adjustment.
  /// Negative values make the widget more compact horizontally.
  @DoubleConverter()
  final double? horizontal;

  /// The vertical density adjustment.
  /// Negative values make the widget more compact vertically.
  @DoubleConverter()
  final double? vertical;

  /// Creates a [PhlutsVisualDensity] from JSON.
  factory PhlutsVisualDensity.fromJson(Map<String, dynamic> json) =>
      _$PhlutsVisualDensityFromJson(json);

  /// Converts this visual density to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsVisualDensityToJson(this);
}
