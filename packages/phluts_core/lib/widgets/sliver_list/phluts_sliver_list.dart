import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_sliver_list.g.dart';

/// A Phluts model representing Flutter's [SliverList] widget.
///
/// Displays its children in a linear scrollable list within
/// a sliver context.
///
/// This widget must be placed inside a [CustomScrollView].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsSliverList(
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
///   {
///         "type": "sliverList",
///         "children": [
///           {
///             "type": "container",
///             "height": 80,
///             "color": "primary",
///             "child": {
///               "type": "center",
///               "child": {
///                 "type": "text",
///                 "data": "List Item 1"
///               }
///             }
///           },
///           {
///             "type": "container",
///             "height": 80,
///             "color": "secondary",
///             "child": {
///               "type": "center",
///               "child": {
///                 "type": "text",
///                 "data": "List Item 2"
///               }
///             }
///           },
///           {
///             "type": "container",
///             "height": 80,
///             "color": "success",
///             "child": {
///               "type": "center",
///               "child": {
///                 "type": "text",
///                 "data": "List Item 3"
///               }
///             }
///           }
///         ]
///       }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverList] documentation:
///    https://api.flutter.dev/flutter/widgets/SliverList-class.html
@JsonSerializable()
class PhlutsSliverList extends PhlutsWidget {
  /// Creates a [PhlutsSliverList] with the given properties.
  const PhlutsSliverList({
    this.children,
    this.addAutomaticKeepAlives,
    this.addRepaintBoundaries,
    this.addSemanticIndexes,
    this.semanticIndexOffset,
  });

  /// The widgets below this sliver in the tree.
  ///
  /// Each child is rendered as a list item.
  final List<PhlutsWidget>? children;

  /// Whether to add automatic keep-alives for the children.
  ///
  /// Defaults to `true` in Flutter's [SliverList].
  final bool? addAutomaticKeepAlives;

  /// Whether to wrap children in repaint boundaries.
  ///
  /// Defaults to `true` in Flutter's [SliverList].
  final bool? addRepaintBoundaries;

  /// Whether to add semantic indexes for the children.
  ///
  /// Defaults to `true` in Flutter's [SliverList].
  final bool? addSemanticIndexes;

  /// An offset added to each child’s semantic index.
  ///
  /// Useful when combining multiple slivers.
  final int? semanticIndexOffset;

  /// Widget type identifier used by the Phluts parser system.
  @override
  String get type => WidgetType.sliverList.name;

  /// Creates a [PhlutsSliverList] from a JSON map.
  factory PhlutsSliverList.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSliverListFromJson(json);

  /// Converts this [PhlutsSliverList] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSliverListToJson(this);
}
