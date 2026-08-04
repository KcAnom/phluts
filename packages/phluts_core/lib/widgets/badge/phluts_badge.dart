import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_badge.g.dart';

/// A Phluts model representing Flutter's [Badge] widget.
///
/// A badge's [label] conveys a small amount of information about its
/// [child], like a count or status. If the label is null then this is
/// a "small" badge that's displayed as a [smallSize] diameter filled
/// circle. Otherwise this is a StadiumBorder shaped "large" badge
/// with height [largeSize].
///
/// Badges are typically used to decorate the icon within a
/// [BottomNavigationBarItem] or a [NavigationRailDestination]
/// or a button's icon.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// // Badge with explicit label
/// PhlutsBadge(
///   label: PhlutsText(data: '5'),
///   child: PhlutsIcon(icon: 'notifications'),
///   backgroundColor: PhlutsColors.red,
///   textColor: PhlutsColors.white,
/// )
///
/// // Badge with count (convenience)
/// PhlutsBadge(
///   count: 5,
///   child: PhlutsIcon(icon: 'notifications'),
/// )
///
/// // Badge with count exceeding maxCount
/// PhlutsBadge(
///   count: 1000,
///   maxCount: 99,
///   child: PhlutsIcon(icon: 'notifications'),
/// ) // Will display "99+"
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "badge",
///   "label": { "type": "text", "data": "5" },
///   "child": { "type": "icon", "icon": "notifications" },
///   "backgroundColor": "#F44336",
///   "textColor": "#FFFFFF"
/// }
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example with count:
/// ```json
/// {
///   "type": "badge",
///   "count": 5,
///   "child": { "type": "icon", "icon": "notifications" }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Badge documentation (`https://api.flutter.dev/flutter/material/Badge-class.html`)
@JsonSerializable(explicitToJson: true)
class PhlutsBadge extends PhlutsWidget {
  /// Creates a [PhlutsBadge] that stacks [label] on top of [child].
  ///
  /// If [label] is null then just a filled circle is displayed. Otherwise
  /// the [label] is displayed within a StadiumBorder shaped area.
  ///
  /// If [count] is provided, it will automatically create a label showing
  /// the count value or '[maxCount]+' if count exceeds [maxCount].
  /// When [count] is provided, any explicit [label] will be ignored.
  const PhlutsBadge({
    this.backgroundColor,
    this.textColor,
    this.smallSize,
    this.largeSize,
    this.textStyle,
    this.padding,
    this.alignment,
    this.offset,
    this.label,
    this.count,
    this.maxCount = 999,
    this.isLabelVisible = true,
    this.child,
  });

  /// Convenience constructor for creating a badge with a numeric label based on [count].
  ///
  /// Initializes [count] with the provided value and automatically creates a label
  /// showing the count value or '[maxCount]+' if count exceeds [maxCount].
  ///
  /// For example, if [count] is 1000 and [maxCount] is 99, the label will display '99+'.
  ///
  /// The [count] must be non-negative (>= 0) and [maxCount] must be positive (> 0).
  ///
  /// {@tool snippet}
  /// Dart Example:
  /// ```dart
  /// PhlutsBadge.count(
  ///   count: 5,
  ///   child: PhlutsIcon(icon: 'notifications'),
  /// )
  ///
  /// PhlutsBadge.count(
  ///   count: 1000,
  ///   maxCount: 99,
  ///   child: PhlutsIcon(icon: 'notifications'),
  /// ) // Will display "99+"
  /// ```
  /// {@end-tool}
  factory PhlutsBadge.count({
    String? backgroundColor,
    String? textColor,
    double? smallSize,
    double? largeSize,
    PhlutsTextStyle? textStyle,
    PhlutsEdgeInsets? padding,
    PhlutsAlignmentGeometry? alignment,
    PhlutsOffset? offset,
    required int count,
    int maxCount = 999,
    bool isLabelVisible = true,
    PhlutsWidget? child,
  }) {
    assert(count >= 0, 'count must be non-negative');
    assert(maxCount > 0, 'maxCount must be positive');
    return PhlutsBadge(
      backgroundColor: backgroundColor,
      textColor: textColor,
      smallSize: smallSize,
      largeSize: largeSize,
      textStyle: textStyle,
      padding: padding,
      alignment: alignment,
      offset: offset,
      count: count,
      maxCount: maxCount,
      isLabelVisible: isLabelVisible,
      child: child,
    );
  }

  /// The badge's fill color (hex string).
  final String? backgroundColor;

  /// The color of the badge's label text (hex string).
  final String? textColor;

  /// The diameter of the badge if [label] is null.
  final double? smallSize;

  /// The badge's height if [label] is non-null.
  final double? largeSize;

  /// The text style for the badge's label.
  final PhlutsTextStyle? textStyle;

  /// The padding added to the badge's label.
  final PhlutsEdgeInsets? padding;

  /// Combined with [offset] to determine the location of the [label].
  final PhlutsAlignmentGeometry? alignment;

  /// Combined with [alignment] to determine the location of the [label].
  final PhlutsOffset? offset;

  /// The badge's content, typically a [PhlutsText] widget.
  ///
  /// If [count] is provided, this will be ignored and a label will be
  /// automatically generated from the count.
  final PhlutsWidget? label;

  /// Convenience property for creating a badge with a numeric label.
  ///
  /// If provided, automatically creates a label showing:
  /// - the [count] value if it is less than or equal to [maxCount],
  /// - otherwise, shows '[maxCount]+'.
  ///
  /// For example, if [count] is 1000 and [maxCount] is 999, the label
  /// will display '999+'.
  ///
  /// When [count] is provided, any explicit [label] will be ignored.
  /// The [count] must be non-negative (>= 0).
  final int? count;

  /// Maximum count value before showing '[maxCount]+' format.
  ///
  /// Only used when [count] is provided. Defaults to 999.
  /// Must be positive (> 0).
  final int? maxCount;

  /// If false, the badge's [label] is not included.
  final bool? isLabelVisible;

  /// The widget that the badge is stacked on top of.
  final PhlutsWidget? child;

  @override
  String get type => WidgetType.badge.name;

  /// Creates a [PhlutsBadge] from a JSON map.
  factory PhlutsBadge.fromJson(Map<String, dynamic> json) =>
      _$PhlutsBadgeFromJson(json);

  /// Converts this [PhlutsBadge] to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsBadgeToJson(this);
}
