import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_wrap.g.dart';

/// A Phluts model representing Flutter's [Wrap] widget.
///
/// A widget that displays its children in multiple horizontal or vertical runs.
///
/// ```dart
/// PhlutsWrap(
///   direction: PhlutsAxis.horizontal,
///   alignment: PhlutsWrapAlignment.start,
///   spacing: 8.0,
///   runAlignment: PhlutsWrapAlignment.start,
///   runSpacing: 8.0,
///   crossAxisAlignment: PhlutsWrapCrossAlignment.start,
///   children: [
///     PhlutsText(data: 'Child 1'),
///     PhlutsText(data: 'Child 2'),
///     PhlutsText(data: 'Child 3'),
///   ],
/// )
/// ```
///
/// ```json
/// {
///   "type": "wrap",
///   "direction": "horizontal",
///   "alignment": "start",
///   "spacing": 8.0,
///   "runAlignment": "start",
///   "runSpacing": 8.0,
///   "crossAxisAlignment": "start",
///   "children": [
///     {"type": "text", "data": "Child 1"},
///     {"type": "text", "data": "Child 2"},
///     {"type": "text", "data": "Child 3"}
///   ]
/// }
/// ```
@JsonSerializable()
class PhlutsWrap extends PhlutsWidget {
  /// Creates a [PhlutsWrap] with the given properties.
  const PhlutsWrap({
    this.direction,
    this.alignment,
    this.spacing,
    this.runAlignment,
    this.runSpacing,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.clipBehavior,
    this.children,
  });

  /// The direction to lay out the children.
  /// Defaults to [PhlutsAxis.horizontal].
  final PhlutsAxis? direction;

  /// How the children within a run should be placed in the main axis.
  /// Defaults to [PhlutsWrapAlignment.start].
  final PhlutsWrapAlignment? alignment;

  /// The amount of space to insert between adjacent children in a run.
  /// Defaults to 0.0.
  @DoubleConverter()
  final double? spacing;

  /// How the runs themselves should be placed in the cross axis.
  /// Defaults to [PhlutsWrapAlignment.start].
  final PhlutsWrapAlignment? runAlignment;

  /// The amount of space to insert between adjacent runs.
  /// Defaults to 0.0.
  @DoubleConverter()
  final double? runSpacing;

  /// How the children within a run should be aligned relative to each other in
  /// the cross axis.
  /// Defaults to [PhlutsWrapCrossAlignment.start].
  final PhlutsWrapCrossAlignment? crossAxisAlignment;

  /// Determines the order to lay children out horizontally and how to interpret
  /// `start` and `end` values.
  /// If null, the ambient [Directionality] is used (which typically provides a [TextDirection]).
  final PhlutsTextDirection? textDirection;

  /// Determines the order to lay children out vertically and how to interpret
  /// `start` and `end` values.
  /// Defaults to [PhlutsVerticalDirection.down].
  final PhlutsVerticalDirection? verticalDirection;

  /// How to clip the content.
  /// Defaults to [PhlutsClip.hardEdge] in the Flutter widget.
  final PhlutsClip? clipBehavior;

  /// The widgets below this widget in the tree.
  final List<PhlutsWidget>? children;

  /// Widget type identifier.
  @override
  String get type => WidgetType.wrap.name;

  /// Creates a [PhlutsWrap] from JSON.
  factory PhlutsWrap.fromJson(Map<String, dynamic> json) =>
      _$PhlutsWrapFromJson(json);

  /// Converts this PhlutsWrap to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsWrapToJson(this);
}
