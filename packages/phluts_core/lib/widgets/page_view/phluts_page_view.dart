import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_page_view.g.dart';

/// A Phluts model representing Flutter's [PageView] widget.
///
/// A scrollable list that works page by page, with each child being a full page.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsPageView(
///   initialPage: 0,
///   keepPage: true,
///   viewportFraction: 1.0,
///   children: [
///     PhlutsContainer(color: '#FF0000'),
///     PhlutsContainer(color: '#00FF00'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "pageView",
///   "initialPage": 0,
///   "keepPage": true,
///   "viewportFraction": 1.0,
///   "children": [
///     { "type": "container", "color": "#FF0000" },
///     { "type": "container", "color": "#00FF00" }
///   ]
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's PageView documentation (`https://api.flutter.dev/flutter/widgets/PageView-class.html`)
@JsonSerializable()
class PhlutsPageView extends PhlutsWidget {
  /// Creates a [PhlutsPageView].
  const PhlutsPageView({
    this.scrollDirection,
    this.reverse,
    this.physics,
    this.pageSnapping,
    this.onPageChanged,
    this.dragStartBehavior,
    this.allowImplicitScrolling,
    this.restorationId,
    this.clipBehavior,
    this.padEnds,
    this.initialPage,
    this.keepPage,
    this.viewportFraction,
    this.children,
  });

  /// The axis along which the page view scrolls.
  final PhlutsAxis? scrollDirection;

  /// Whether the page view scrolls in the reading direction.
  final bool? reverse;

  /// The scroll physics to use for the page view.
  final PhlutsScrollPhysics? physics;

  /// Whether to snap to page boundaries during scrolling.
  final bool? pageSnapping;

  /// Action invoked when the page changes.
  final PhlutsAction? onPageChanged;

  /// The drag start behavior for drag gestures.
  final PhlutsDragStartBehavior? dragStartBehavior;

  /// Whether to allow implicit scrolling.
  final bool? allowImplicitScrolling;

  /// The restoration ID to restore scroll offset across app launches.
  final String? restorationId;

  /// The clip behavior for the content.
  final PhlutsClip? clipBehavior;

  /// Whether to add padding to the ends of the list.
  final bool? padEnds;

  /// The initial page to display.
  final int? initialPage;

  /// Whether to save the current page with the [PageController].
  final bool? keepPage;

  /// Fraction of the viewport that each page should occupy.
  @DoubleConverter()
  final double? viewportFraction;

  /// The list of pages to display.
  final List<PhlutsWidget>? children;

  /// Widget type identifier.
  @override
  String get type => WidgetType.pageView.name;

  /// Creates a [PhlutsPageView] from a JSON map.
  factory PhlutsPageView.fromJson(Map<String, dynamic> json) =>
      _$PhlutsPageViewFromJson(json);

  /// Converts this [PhlutsPageView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsPageViewToJson(this);
}
