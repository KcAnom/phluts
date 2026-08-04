import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/geometry/phluts_rect/phluts_rect.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';
import 'package:phluts_core/foundation/text/phluts_text_types.dart';

part 'phluts_positioned.g.dart';

/// A Phluts widget that controls where a child of a Stack is positioned.
///
/// This widget corresponds to Flutter's Positioned widget and allows
/// precise positioning of a widget within a Stack using coordinates
/// and optional sizing constraints.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsPositioned(
///   left: 10,
///   top: 20,
///   child: PhlutsText(data: 'Positioned text'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "positioned",
///   "left": 10,
///   "top": 20,
///   "child": {"type": "text", "data": "Positioned text"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsPositioned extends PhlutsWidget {
  /// Creates a positioned widget with optional positioning and sizing.
  ///
  /// Only two of the three horizontal values ([left], [right], [width]) may be
  /// set; at least one must be null. Similarly, only two of the three vertical
  /// values ([top], [bottom], [height]) may be set; at least one must be null.
  const PhlutsPositioned({
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.width,
    this.height,
    required this.child,
  });

  /// Creates a PhlutsPositioned object with the values from the given [PhlutsRect].
  ///
  /// This sets the [left], [top], [width], and [height] properties
  /// from the given [PhlutsRect]. The [right] and [bottom] properties are
  /// set to null.
  PhlutsPositioned.fromRect({required PhlutsRect rect, required this.child})
    : left = rect.left,
      top = rect.top,
      width = rect.width,
      height = rect.height,
      right = null,
      bottom = null;

  /// Creates a PhlutsPositioned object with the values from the given relative rectangle.
  ///
  /// This sets the [left], [top], [right], and [bottom] properties from the
  /// given values. The [height] and [width] properties are set to null.
  const PhlutsPositioned.fromRelativeRect({
    required this.left,
    required this.top,
    required this.right,
    required this.bottom,
    required this.child,
  }) : width = null,
       height = null;

  /// Creates a PhlutsPositioned object with [left], [top], [right], and [bottom] set
  /// to 0.0 unless a value for them is passed.
  const PhlutsPositioned.fill({
    this.left = 0.0,
    this.top = 0.0,
    this.right = 0.0,
    this.bottom = 0.0,
    required this.child,
  }) : width = null,
       height = null;

  /// Creates a widget that controls where a child of a [Stack] is positioned.
  ///
  /// Only two of the three horizontal values (`start`, `end`, and [width]) may
  /// be set; at least one must be null. Only two of the three vertical values
  /// ([top], [bottom], and [height]) may be set; at least one must be null.
  ///
  /// If [textDirection] is [PhlutsTextDirection.rtl], then `start` is used for
  /// [right] and `end` for [left]. If [textDirection] is [PhlutsTextDirection.ltr],
  /// then `start` is used for [left] and `end` for [right].
  factory PhlutsPositioned.directional({
    required PhlutsTextDirection textDirection,
    double? start,
    double? top,
    double? end,
    double? bottom,
    double? width,
    double? height,
    required PhlutsWidget child,
  }) {
    final (double? left, double? right) = switch (textDirection) {
      PhlutsTextDirection.rtl => (end, start),
      PhlutsTextDirection.ltr => (start, end),
    };
    return PhlutsPositioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      width: width,
      height: height,
      child: child,
    );
  }

  /// The distance from the left edge of the stack.
  @DoubleConverter()
  final double? left;

  /// The distance from the top edge of the stack.
  @DoubleConverter()
  final double? top;

  /// The distance from the right edge of the stack.
  @DoubleConverter()
  final double? right;

  /// The distance from the bottom edge of the stack.
  @DoubleConverter()
  final double? bottom;

  /// The width of the positioned widget.
  @DoubleConverter()
  final double? width;

  /// The height of the positioned widget.
  @DoubleConverter()
  final double? height;

  /// The widget to position within the stack.
  final PhlutsWidget? child;

  @override
  String get type => WidgetType.positioned.name;

  /// Creates a [PhlutsPositioned] from a JSON map.
  factory PhlutsPositioned.fromJson(Map<String, dynamic> json) =>
      _$PhlutsPositionedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsPositionedToJson(this);
}
