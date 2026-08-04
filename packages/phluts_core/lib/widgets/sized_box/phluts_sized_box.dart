import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_sized_box.g.dart';

/// A Phluts model representing Flutter's [SizedBox] widget.
///
/// A box with a specified size.
///
/// If given a child, this widget forces its child to have a specific width and/or height.
/// If not given a child, SizedBox will try to size itself to the specified width and height,
/// and then shrinkwrap if the dimensions are not specified.
///
/// ```dart
/// PhlutsSizedBox(
///   width: 100.0,
///   height: 50.0,
///   child: PhlutsText(data: 'Content'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "sizedBox",
///   "width": 100.0,
///   "height": 50.0,
///   "child": {"type": "text", "data": "Content"}
/// }
/// ```
@JsonSerializable()
class PhlutsSizedBox extends PhlutsWidget {
  /// Creates a [PhlutsSizedBox] with the given properties.
  const PhlutsSizedBox({this.width, this.height, this.child});

  /// The width of the box.
  /// If null, the box will try to be as wide as its parent allows.
  @DoubleConverter()
  final double? width;

  /// The height of the box.
  /// If null, the box will try to be as high as its parent allows.
  @DoubleConverter()
  final double? height;

  /// The widget below this widget in the tree.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.sizedBox.name;

  /// Creates a [PhlutsSizedBox] from JSON.
  factory PhlutsSizedBox.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSizedBoxFromJson(json);

  /// Converts this PhlutsSizedBox to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSizedBoxToJson(this);
}
