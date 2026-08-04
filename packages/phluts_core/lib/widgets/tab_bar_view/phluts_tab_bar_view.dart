import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_tab_bar_view.g.dart';

/// A Phluts model representing Flutter's [TabBarView] widget.
///
/// Displays the content for each tab in a [TabBar], supporting horizontal
/// paging between children.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsTabBarView(
///   children: [
///     PhlutsCenter(child: PhlutsText('Page 1')),
///     PhlutsCenter(child: PhlutsText('Page 2')),
///   ],
///   physics: PhlutsScrollPhysics.page,
///   dragStartBehavior: PhlutsDragStartBehavior.start,
///   viewportFraction: 1.0,
///   clipBehavior: PhlutsClip.hardEdge,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "tabBarView",
///   "children": [
///     { "type": "center", "child": { "type": "text", "data": "Page 1" } },
///     { "type": "center", "child": { "type": "text", "data": "Page 2" } }
///   ],
///   "physics": "page",
///   "dragStartBehavior": "start",
///   "viewportFraction": 1.0,
///   "clipBehavior": "hardEdge"
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's TabBarView documentation (`https://api.flutter.dev/flutter/material/TabBarView-class.html`)
@JsonSerializable()
class PhlutsTabBarView extends PhlutsWidget {
  /// Creates a [PhlutsTabBarView].
  const PhlutsTabBarView({
    required this.children,
    this.dragStartBehavior,
    this.physics,
    this.viewportFraction,
    this.clipBehavior,
  });

  /// The pages to display; typically one per tab.
  final List<PhlutsWidget> children;

  /// Drag start behavior for horizontal drags.
  final PhlutsDragStartBehavior? dragStartBehavior;

  /// Scroll physics for the page view.
  final PhlutsScrollPhysics? physics;

  /// Fraction of the viewport that each page should occupy.
  @DoubleConverter()
  final double? viewportFraction;

  /// The clipping behavior for content.
  final PhlutsClip? clipBehavior;

  /// Widget type identifier.
  @override
  String get type => WidgetType.tabBarView.name;

  /// Creates a [PhlutsTabBarView] from a JSON map.
  factory PhlutsTabBarView.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTabBarViewFromJson(json);

  /// Converts this [PhlutsTabBarView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsTabBarViewToJson(this);
}
