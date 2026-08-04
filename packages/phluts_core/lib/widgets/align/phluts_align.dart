import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_align.g.dart';

/// A Phluts model representing Flutter's [Align] widget.
///
/// Aligns its child within itself and optionally sizes itself based on the
/// child's size. Supports alignment, width factor, and height factor properties.
///
/// ```dart
/// PhlutsAlign(
///   alignment: PhlutsAlignmentDirectional.center,
///   widthFactor: 0.8,
///   heightFactor: 0.6,
///   child: PhlutsText(data: 'Centered'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "align",
///   "alignment": "center",
///   "widthFactor": 0.8,
///   "heightFactor": 0.6,
///   "child": {"type": "text", "data": "Centered"}
/// }
/// ```
@JsonSerializable()
class PhlutsAlign extends PhlutsWidget {
  /// Creates a [PhlutsAlign] with optional alignment and sizing properties.
  const PhlutsAlign({
    this.alignment,
    this.widthFactor,
    this.heightFactor,
    this.child,
  });

  /// How to align the [child] within the align widget.
  final PhlutsAlignmentDirectional? alignment;

  /// If non-null, sets the width of this widget to the child's width
  /// multiplied by this factor.
  @DoubleConverter()
  final double? widthFactor;

  /// If non-null, sets the height of this widget to the child's height
  /// multiplied by this factor.
  @DoubleConverter()
  final double? heightFactor;

  /// The child widget to align.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.align.name;

  /// Creates a [PhlutsAlign] from JSON.
  factory PhlutsAlign.fromJson(Map<String, dynamic> json) =>
      _$PhlutsAlignFromJson(json);

  /// Converts this align widget to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsAlignToJson(this);
}
