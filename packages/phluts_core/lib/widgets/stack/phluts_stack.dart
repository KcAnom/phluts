import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_stack.g.dart';

/// A Phluts model representing Flutter's [Stack] widget.
///
/// Positions its [children] relative to the edges of the box. Children are
/// painted in order with the first child being at the bottom.
/// Control layout using [alignment], [textDirection], [fit], and [clipBehavior].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsStack(
///   alignment: PhlutsAlignment.center,
///   children: const [
///     PhlutsContainer(color: '#EEEEEE', width: 200, height: 200),
///     PhlutsText(data: 'On top'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "stack",
///   "alignment": "center",
///   "children": [
///     {"type": "container", "color": "#EEEEEE", "width": 200, "height": 200},
///     {"type": "text", "data": "On top"}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsStack extends PhlutsWidget {
  /// Creates a [PhlutsStack] that lays out its [children] relative to its box.
  const PhlutsStack({
    this.alignment,
    this.textDirection,
    this.fit,
    this.clipBehavior,
    this.children,
  });

  /// How to align non-positioned [children] within the stack.
  final PhlutsAlignment? alignment;

  /// The text direction used to resolve alignment.
  final PhlutsTextDirection? textDirection;

  /// How to size non-positioned [children] in the stack.
  final PhlutsStackFit? fit;

  /// Whether to clip children that paint outside the stack's bounds.
  final PhlutsClip? clipBehavior;

  /// The widgets displayed by this stack, painted in order.
  final List<PhlutsWidget>? children;

  /// Widget type identifier.
  @override
  String get type => WidgetType.stack.name;

  /// Creates a [PhlutsStack] from a JSON map.
  factory PhlutsStack.fromJson(Map<String, dynamic> json) =>
      _$PhlutsStackFromJson(json);

  /// Converts this [PhlutsStack] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsStackToJson(this);
}
