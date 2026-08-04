import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_custom_scroll_view.g.dart';

/// A Phluts model representing Flutter's [CustomScrollView].
///
/// Displays a scrollable area composed of multiple sliver widgets.
/// Use this to combine various sliver-based widgets like `SliverAppBar`,
/// `SliverList`, and `SliverGrid` in a single scroll view.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsCustomScrollView(
///   slivers: const [
///     PhlutsSliverAppBar(title: PhlutsText('Title')),
///     PhlutsSliverList(children: [
///       PhlutsText('Item 1'),
///       PhlutsText('Item 2'),
///     ]),
///   ],
///   scrollDirection: PhlutsAxis.vertical,
///   dragStartBehavior: PhlutsDragStartBehavior.start,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "customScrollView",
///   "slivers": [
///     {"type": "sliverAppBar", "title": {"type": "text", "data": "Title"}},
///     {"type": "sliverList", "children": [
///       {"type": "text", "data": "Item 1"},
///       {"type": "text", "data": "Item 2"}
///     ]}
///   ],
///   "scrollDirection": "vertical",
///   "dragStartBehavior": "start"
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [CustomScrollView documentation](https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html)
@JsonSerializable(explicitToJson: true)
class PhlutsCustomScrollView extends PhlutsWidget {
  /// Creates a [PhlutsCustomScrollView].
  const PhlutsCustomScrollView({
    this.slivers,
    this.scrollDirection,
    this.reverse,
    this.primary,
    this.physics,
    this.shrinkWrap,
    this.anchor,
    this.cacheExtent,
    this.semanticChildCount,
    this.dragStartBehavior,
    this.keyboardDismissBehavior,
    this.restorationId,
    this.clipBehavior,
    this.hitTestBehavior,
  });

  /// The sliver widgets that make up the scrollable area.
  ///
  /// Type: List of [PhlutsWidget]
  final List<PhlutsWidget>? slivers;

  /// The axis along which the scroll view scrolls.
  ///
  /// Type: [PhlutsAxis]
  final PhlutsAxis? scrollDirection;

  /// Whether the scroll view scrolls in the reading direction.
  ///
  /// Type: [bool]
  final bool? reverse;

  /// Whether the scroll view is the primary scroll view associated with the parent [PrimaryScrollController].
  ///
  /// Type: [bool]
  final bool? primary;

  /// The physics to use for the scroll view.
  ///
  /// Type: [PhlutsScrollPhysics]
  final PhlutsScrollPhysics? physics;

  /// Whether the extent of the scroll view in the scrollDirection should be determined by the contents being viewed.
  ///
  /// Type: [bool]
  final bool? shrinkWrap;

  /// The relative position of the zero scroll offset.
  ///
  /// Type: [double]
  @DoubleConverter()
  final double? anchor;

  /// The number of pixels to cache beyond the current viewport.
  ///
  /// Type: [double]
  @DoubleConverter()
  final double? cacheExtent;

  /// The semantic child count for accessibility.
  ///
  /// Type: [int]
  final int? semanticChildCount;

  /// Determines the way that drag start behavior is handled.
  ///
  /// Type: [PhlutsDragStartBehavior]
  final PhlutsDragStartBehavior? dragStartBehavior;

  /// When set to [PhlutsScrollViewKeyboardDismissBehavior.onDrag], the keyboard is dismissed on drag.
  ///
  /// Type: [PhlutsScrollViewKeyboardDismissBehavior]
  final PhlutsScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;

  /// Restoration ID to save and restore the scroll offset.
  ///
  /// Type: [String]
  final String? restorationId;

  /// How to clip the content of this scroll view.
  ///
  /// Type: [PhlutsClip]
  final PhlutsClip? clipBehavior;

  /// How hit tests are performed during pointer events.
  ///
  /// Type: [PhlutsHitTestBehavior]
  final PhlutsHitTestBehavior? hitTestBehavior;

  /// Widget type identifier.
  @override
  String get type => WidgetType.customScrollView.name;

  /// Creates a [PhlutsCustomScrollView] from a JSON map.
  factory PhlutsCustomScrollView.fromJson(Map<String, dynamic> json) =>
      _$PhlutsCustomScrollViewFromJson(json);

  /// Converts this [PhlutsCustomScrollView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsCustomScrollViewToJson(this);
}
