import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_carousel_view.g.dart';

/// A Phluts model representing Flutter's [CarouselView] widget.
///
/// Displays its children in a scrollable carousel, either as regular equally
/// sized pages or with weighted widths defined by `flexWeights`.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsCarouselView(
///   carouselType: PhlutsCarouselViewType.weighted,
///   padding: PhlutsEdgeInsets.symmetric(horizontal: 12, vertical: 8),
///   backgroundColor: '#FFFFFF',
///   elevation: 5.0,
///   overlayColor: '#FF0000',
///   itemSnapping: true,
///   shrinkExtent: 0.0,
///   scrollDirection: PhlutsAxis.horizontal,
///   reverse: false,
///   onTap: PhlutsAction(type: 'callback', args: {'name': 'onItemTap'}),
///   enableSplash: true,
///   itemExtent: 300,
///   flexWeights: [1, 7, 1],
///   children: [
///     PhlutsImage(src: 'https://example.com/a.png'),
///     PhlutsImage(src: 'https://example.com/b.png'),
///     PhlutsImage(src: 'https://example.com/c.png'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "carouselView",
///   "carouselType": "weighted",
///   "padding": 12,
///   "backgroundColor": "#FFFFFF",
///   "elevation": 5.0,
///   "overlayColor": "#FF0000",
///   "itemSnapping": true,
///   "shrinkExtent": 0.0,
///   "scrollDirection": "horizontal",
///   "reverse": false,
///   "onTap": {"type": "callback", "name": "onItemTap"},
///   "enableSplash": true,
///   "itemExtent": 300,
///   "flexWeights": [1, 7, 1],
///   "children": [
///     {"type": "image", "src": "https://example.com/a.png"},
///     {"type": "image", "src": "https://example.com/b.png"},
///     {"type": "image", "src": "https://example.com/c.png"}
///   ]
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [CarouselView documentation](https://api.flutter.dev/flutter/widgets/Carousel-class.html)
@JsonSerializable()
class PhlutsCarouselView extends PhlutsWidget {
  /// Creates a [PhlutsCarouselView] with the given properties.
  const PhlutsCarouselView({
    this.carouselType,
    this.padding,
    this.backgroundColor,
    this.elevation,
    this.overlayColor,
    this.itemSnapping,
    this.shrinkExtent,
    this.scrollDirection,
    this.reverse,
    this.onTap,
    this.enableSplash,
    this.itemExtent,
    this.flexWeights,
    this.children,
  });

  /// The type of the carousel.
  /// Defaults to [PhlutsCarouselViewType.regular].
  final PhlutsCarouselViewType? carouselType;

  /// The amount of space by which to inset the carousel.
  final PhlutsEdgeInsets? padding;

  /// The background color of the carousel.
  final PhlutsColor? backgroundColor;

  /// The z-coordinate at which to place this carousel.
  @DoubleConverter()
  final double? elevation;

  /// The overlay color of the carousel items.
  final PhlutsColor? overlayColor;

  /// Whether the items should snap into place.
  /// Defaults to false.
  final bool? itemSnapping;

  /// The amount by which to shrink the carousel.
  /// Defaults to 0.0.
  @DoubleConverter()
  final double? shrinkExtent;

  /// The axis along which the carousel scrolls.
  /// Defaults to [PhlutsAxis.horizontal].
  final PhlutsAxis? scrollDirection;

  /// Whether the carousel scrolls in the reverse direction.
  /// Defaults to false.
  final bool? reverse;

  /// The callback to invoke when an item is tapped.
  final PhlutsAction? onTap;

  /// Whether to enable splash effect on tap.
  /// Defaults to true.
  final bool? enableSplash;

  /// The extent of each item in the carousel (regular type only).
  @DoubleConverter()
  final double? itemExtent;

  /// The flex weights for the items in the carousel (weighted type only).
  final List<int>? flexWeights;

  /// The widgets below this widget in the tree.
  final List<PhlutsWidget>? children;

  /// Widget type identifier.
  @override
  String get type => WidgetType.carouselView.name;

  /// Creates a [PhlutsCarouselView] from a JSON map.
  factory PhlutsCarouselView.fromJson(Map<String, dynamic> json) =>
      _$PhlutsCarouselViewFromJson(json);

  /// Converts this [PhlutsCarouselView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsCarouselViewToJson(this);
}
