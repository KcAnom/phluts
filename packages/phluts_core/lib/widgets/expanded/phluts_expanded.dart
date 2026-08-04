import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_expanded.g.dart';

/// A Phluts model representing Flutter's [Expanded] widget.
///
/// Expands a child of a [Row], [Column], or [Flex] so that the child fills
/// the available space in the main axis, according to the [flex] factor.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsRow(children: const [
///   PhlutsExpanded(child: PhlutsText(data: 'Left')),
///   PhlutsExpanded(flex: 2, child: PhlutsText(data: 'Right (2x)')),
/// ])
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "row",
///   "children": [
///     {"type": "expanded", "child": {"type": "text", "data": "Left"}},
///     {"type": "expanded", "flex": 2, "child": {"type": "text", "data": "Right (2x)"}}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsExpanded extends PhlutsWidget {
  /// Creates an expanded widget with optional flex factor and child.
  const PhlutsExpanded({this.flex, this.child});

  /// The flex factor to use for this child.
  ///
  /// If null, defaults to 1. Higher values take more space in the main axis.
  final int? flex;

  /// The widget that is expanded within its parent [Flex] layout.
  final PhlutsWidget? child;

  @override
  String get type => WidgetType.expanded.name;

  /// Creates a [PhlutsExpanded] from a JSON map.
  factory PhlutsExpanded.fromJson(Map<String, dynamic> json) =>
      _$PhlutsExpandedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsExpandedToJson(this);
}
