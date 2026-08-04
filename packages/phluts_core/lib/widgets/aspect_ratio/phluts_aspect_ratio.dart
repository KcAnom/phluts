import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_aspect_ratio.g.dart';

/// A Phluts model representing Flutter's [AspectRatio] widget.
///
/// Constrains its [child] to a specific width-to-height ratio.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsAspectRatio(
///   aspectRatio: 16 / 9,
///   child: PhlutsContainer(color: '#FF0000'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "aspectRatio",
///   "aspectRatio": 1.7778,
///   "child": {"type": "container", "color": "#FF0000"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsAspectRatio extends PhlutsWidget {
  /// Creates an aspect ratio widget with the specified ratio and child.
  const PhlutsAspectRatio({required this.aspectRatio, required this.child});

  /// The width-to-height ratio to honor for laying out the [child].
  ///
  /// For example, `16 / 9` (≈1.7778) or `1.0` for a square.
  @DoubleConverter()
  final double aspectRatio;

  /// The widget to display inside the constrained aspect ratio box.
  final PhlutsWidget? child;

  @override
  String get type => WidgetType.aspectRatio.name;

  /// Creates a [PhlutsAspectRatio] from a JSON map.
  factory PhlutsAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$PhlutsAspectRatioFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsAspectRatioToJson(this);
}
