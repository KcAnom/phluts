import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_grid_view.g.dart';

/// A Phluts model representing Flutter's [GridView] widget.
///
/// Displays its children in a two-dimensional, scrollable grid.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsGridView(
///   crossAxisCount: 2,
///   mainAxisSpacing: 10,
///   crossAxisSpacing: 10,
///   childAspectRatio: 1.0,
///   padding: PhlutsEdgeInsets.all(10),
///   children: [
///     PhlutsText(data: 'Item 1'),
///     PhlutsText(data: 'Item 2'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "gridView",
///   "crossAxisCount": 2,
///   "mainAxisSpacing": 10,
///   "crossAxisSpacing": 10,
///   "childAspectRatio": 1.0,
///   "padding": 10,
///   "children": [
///     {"type": "text", "data": "Item 1"},
///     {"type": "text", "data": "Item 2"}
///   ]
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [GridView documentation](https://api.flutter.dev/flutter/widgets/GridView-class.html)
@JsonSerializable()
class PhlutsGridView extends PhlutsWidget {
  /// Creates a [PhlutsGridView] with the given properties.
  const PhlutsGridView({
    this.scrollDirection,
    this.reverse,
    this.primary,
    this.physics,
    this.shrinkWrap,
    this.padding,
    this.crossAxisCount,
    this.mainAxisSpacing,
    this.crossAxisSpacing,
    this.childAspectRatio,
    this.mainAxisExtent,
    this.addAutomaticKeepAlives,
    this.addRepaintBoundaries,
    this.addSemanticIndexes,
    this.cacheExtent,
    this.children,
    this.semanticChildCount,
    this.dragStartBehavior,
    this.keyboardDismissBehavior,
    this.restorationId,
    this.clipBehavior,
  });

  /// The axis along which the grid scrolls.
  /// Defaults to [PhlutsAxis.vertical].
  final PhlutsAxis? scrollDirection;

  /// Whether the grid scrolls in the reverse direction.
  /// Defaults to false.
  final bool? reverse;

  /// Whether this is the primary scroll view associated with the parent
  /// PrimaryScrollController.
  /// Defaults to false.
  final bool? primary;

  /// The physics for the scroll view.
  final PhlutsScrollPhysics? physics;

  /// Whether the extent of the scroll view in the scroll direction should be
  /// determined by the contents being viewed rather than the viewport.
  /// Defaults to false.
  final bool? shrinkWrap;

  /// The amount of space by which to inset the grid.
  final PhlutsEdgeInsets? padding;

  /// The number of children in the cross axis.
  final int? crossAxisCount;

  /// The amount of space between the children in the main axis.
  /// Defaults to 0.0.
  @DoubleConverter()
  final double? mainAxisSpacing;

  /// The amount of space between the children in the cross axis.
  /// Defaults to 0.0.
  @DoubleConverter()
  final double? crossAxisSpacing;

  /// The ratio of the cross-axis to the main-axis extent of each child.
  /// Defaults to 1.0.
  @DoubleConverter()
  final double? childAspectRatio;

  /// The extent of each child in the main axis.
  @DoubleConverter()
  final double? mainAxisExtent;

  /// Whether to add automatic keep-alives.
  /// Defaults to true in Flutter's [GridView].
  final bool? addAutomaticKeepAlives;

  /// Whether to add repaint boundaries.
  /// Defaults to true in Flutter's [GridView].
  final bool? addRepaintBoundaries;

  /// Whether to add semantic indexes.
  /// Defaults to true in Flutter's [GridView].
  final bool? addSemanticIndexes;

  /// The extent to which the content is cached.
  @DoubleConverter()
  final double? cacheExtent;

  /// The widgets below this widget in the tree.
  final List<PhlutsWidget>? children;

  /// The number of children for semantics purposes.
  final int? semanticChildCount;

  /// The drag start behavior.
  /// Defaults to [PhlutsDragStartBehavior.start].
  final PhlutsDragStartBehavior? dragStartBehavior;

  /// The keyboard dismiss behavior.
  /// Defaults to [PhlutsScrollViewKeyboardDismissBehavior.manual].
  final PhlutsScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;

  /// The restoration ID to save and restore the scroll offset.
  final String? restorationId;

  /// The clip behavior of the grid.
  /// Defaults to [PhlutsClip.hardEdge].
  final PhlutsClip? clipBehavior;

  /// Widget type identifier.
  @override
  String get type => WidgetType.gridView.name;

  /// Creates a [PhlutsGridView] from a JSON map.
  factory PhlutsGridView.fromJson(Map<String, dynamic> json) =>
      _$PhlutsGridViewFromJson(json);

  /// Converts this [PhlutsGridView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsGridViewToJson(this);
}
