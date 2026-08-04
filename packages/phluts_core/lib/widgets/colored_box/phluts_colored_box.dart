import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_colored_box.g.dart';

/// A Phluts model representing Flutter's [ColoredBox] widget.
///
/// Paints its child with a solid background [color]. This is a lightweight
/// way to add a background color without additional layout or decoration.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsColoredBox(
///   color: PhlutsColors.blue,
///   child: PhlutsText(data: 'Hello'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "coloredBox",
///   "color": "#FF2196F3",
///   "child": { "type": "text", "data": "Hello" }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's ColoredBox documentation (`https://api.flutter.dev/flutter/widgets/ColoredBox-class.html`)
@JsonSerializable()
class PhlutsColoredBox extends PhlutsWidget {
  /// Creates a [PhlutsColoredBox].
  const PhlutsColoredBox({required this.color, this.child});

  /// The background color to paint behind the [child].
  final PhlutsColor color;

  /// The widget below this colored background.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.coloredBox.name;

  /// Creates a [PhlutsColoredBox] from a JSON map.
  factory PhlutsColoredBox.fromJson(Map<String, dynamic> json) =>
      _$PhlutsColoredBoxFromJson(json);

  /// Converts this [PhlutsColoredBox] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsColoredBoxToJson(this);
}
