import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_limited_box.g.dart';

/// A Phluts model representing Flutter's [LimitedBox] widget.
///
/// A box that limits its size only when it's unconstrained.
/// If this widget's maximum width is unconstrained then it will try to
/// be as wide as possible. If this widget's maximum height is unconstrained
/// then it will try to be as tall as possible.
///
/// ```dart
/// PhlutsLimitedBox(
///   maxWidth: 100.0,
///   maxHeight: 150.0,
///   child: PhlutsText(data: 'Limited content'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "limitedBox",
///   "maxWidth": 100.0,
///   "maxHeight": 150.0,
///   "child": {"type": "text", "data": "Limited content"}
/// }
/// ```
@JsonSerializable()
class PhlutsLimitedBox extends PhlutsWidget {
  /// Creates a [PhlutsLimitedBox] with the given properties.
  const PhlutsLimitedBox({this.maxWidth, this.maxHeight, this.child});

  /// The maximum width the child can be.
  /// Defaults to [double.infinity] in the Flutter widget.
  @DoubleConverter()
  final double? maxWidth;

  /// The maximum height the child can be.
  /// Defaults to [double.infinity] in the Flutter widget.
  @DoubleConverter()
  final double? maxHeight;

  /// The widget below this widget in the tree.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.limitedBox.name;

  /// Creates a [PhlutsLimitedBox] from JSON.
  factory PhlutsLimitedBox.fromJson(Map<String, dynamic> json) =>
      _$PhlutsLimitedBoxFromJson(json);

  /// Converts this [PhlutsLimitedBox] to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsLimitedBoxToJson(this);
}
