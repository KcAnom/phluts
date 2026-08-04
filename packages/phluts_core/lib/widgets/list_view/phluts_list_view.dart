import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_list_view.g.dart';

/// A Phluts model representing Flutter's [ListView.separated] widget.
///
/// A scrollable, linear array of widgets that are separated by separator widgets.
///
///
/// dart
/// PhlutsListView(
///   children: [
///     {"type": "text", "data": "Item 1"},
///     {"type": "text", "data": "Item 2"}
///   ],
///   separator: {"type": "sizedBox", "height": 8.0}, // Example separator
///   scrollDirection: PhlutsAxis.vertical,
///   reverse: false,
///   physics: PhlutsScrollPhysics(type: 'bouncingScrollPhysics'), // Example physics
///   padding: PhlutsEdgeInsets.all(10.0),
///   // ... other properties
/// )
///
///
///
/// json
/// {
///   "type": "listView",
///   "children": [
///     {"type": "text", "data": "Item 1"},
///     {"type": "text", "data": "Item 2"}
///   ],
///   "separator": {"type": "sizedBox", "height": 8.0},
///   "scrollDirection": "vertical",
///   "reverse": false,
///   "physics": {"type": "bouncingScrollPhysics"},
///   "padding": {"all": 10.0}
///   // ... other properties
/// }
///
@JsonSerializable()
class PhlutsListView extends PhlutsWidget {
  /// Creates a [PhlutsListView].
  const PhlutsListView({
    this.scrollDirection,
    this.reverse,
    this.primary,
    this.physics,
    this.shrinkWrap,
    this.padding,
    this.addAutomaticKeepAlives,
    this.addRepaintBoundaries,
    this.addSemanticIndexes,
    this.cacheExtent,
    this.children,
    this.separator,
    this.semanticChildCount,
    this.dragStartBehavior,
    this.keyboardDismissBehavior,
    this.restorationId,
    this.clipBehavior,
  });

  /// The axis along which the scroll view scrolls.
  final PhlutsAxis? scrollDirection;

  /// Whether the scroll view scrolls in the reading direction.
  final bool? reverse;

  /// Whether this is the primary scroll view associated with the parent
  /// [PrimaryScrollController].
  final bool? primary;

  /// How the scroll view should respond to user input.
  final PhlutsScrollPhysics? physics;

  /// Whether the extent of the scroll view in the [scrollDirection] should be
  /// determined by the contents being viewed.
  final bool? shrinkWrap;

  /// The amount of space by which to inset the children.
  final PhlutsEdgeInsets? padding;

  /// Whether to wrap each child in an [AutomaticKeepAlive].
  final bool? addAutomaticKeepAlives;

  /// Whether to wrap each child in a [RepaintBoundary].
  final bool? addRepaintBoundaries;

  /// Whether to wrap each child in an [IndexedSemantics].
  final bool? addSemanticIndexes;

  /// The cache extent of the ListView.
  @DoubleConverter()
  final double? cacheExtent;

  /// The PhlutsWidgets to display in the list.
  final List<PhlutsWidget>? children;

  /// The PhlutsWidget to display between list items as a separator.
  final PhlutsWidget? separator;

  /// The number of children that will contribute semantic information.
  final int? semanticChildCount;

  /// Determines the way that drag start behavior is handled.
  final PhlutsDragStartBehavior? dragStartBehavior;

  /// {@macro flutter.widgets.ScrollView.keyboardDismissBehavior}
  final PhlutsScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;

  /// {@macro flutter.widgets.scrollable.restorationId}
  final String? restorationId;

  /// {@macro flutter.material.Material.clipBehavior}
  final PhlutsClip? clipBehavior;

  /// Widget type identifier.
  @override
  String get type => WidgetType.listView.name;

  /// Creates a [PhlutsListView] from JSON.
  factory PhlutsListView.fromJson(Map<String, dynamic> json) =>
      _$PhlutsListViewFromJson(json);

  /// Converts this [PhlutsListView] to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsListViewToJson(this);
}
