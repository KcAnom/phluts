import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_center.g.dart';

/// A Phluts model representing Flutter's [Center] widget.
///
/// Centers its [child] within itself, optionally expanding based on
/// [widthFactor] and [heightFactor].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsCenter(
///   child: PhlutsText(data: 'Hello world'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "center",
///   "child": {"type": "text", "data": "Hello world"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsCenter extends PhlutsWidget {
  /// Creates a center widget with optional sizing factors and child.
  const PhlutsCenter({this.widthFactor, this.heightFactor, this.child});

  /// The width factor to expand to based on the child's width.
  ///
  /// If null, the width is unconstrained and the child is simply centered.
  @DoubleConverter()
  final double? widthFactor;

  /// The height factor to expand to based on the child's height.
  ///
  /// If null, the height is unconstrained and the child is simply centered.
  @DoubleConverter()
  final double? heightFactor;

  /// The widget to be centered.
  final PhlutsWidget? child;

  /// Creates a [PhlutsCenter] from a JSON map.
  factory PhlutsCenter.fromJson(Map<String, dynamic> json) =>
      _$PhlutsCenterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsCenterToJson(this);

  @override
  String get type => WidgetType.center.name;
}
