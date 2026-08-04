import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_tab_bar.g.dart';

/// A Phluts model representing Flutter's [TabBar] widget.
///
/// A material design widget that displays a horizontal row of tabs.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsTabBar(
///   tabs: [
///     PhlutsTab(text: 'Home'),
///     PhlutsTab(text: 'Profile'),
///   ],
///   isScrollable: false,
///   indicatorWeight: 2.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "tabBar",
///   "tabs": [
///     { "type": "tab", "text": "Home" },
///     { "type": "tab", "text": "Profile" }
///   ],
///   "isScrollable": false,
///   "indicatorWeight": 2.0
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's TabBar documentation (`https://api.flutter.dev/flutter/material/TabBar-class.html`)
@JsonSerializable()
class PhlutsTabBar extends PhlutsWidget {
  /// Creates a [PhlutsTabBar].
  const PhlutsTabBar({
    required this.tabs,
    this.initialIndex,
    this.isScrollable,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment,
    this.indicatorWeight,
    this.indicatorPadding,
    this.indicator,
    this.indicatorSize,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.dragStartBehavior,
    this.enableFeedback,
    this.physics,
    this.tabAlignment,
    this.dividerColor,
    this.dividerHeight,
  });

  /// The tabs to display.
  final List<PhlutsWidget> tabs;

  /// The initial tab index (used with DefaultTabController).
  final int? initialIndex;

  /// Whether the tab bar can be scrolled horizontally.
  final bool? isScrollable;

  /// Padding for the entire tab bar.
  final PhlutsEdgeInsets? padding;

  /// Color for the tab indicator.
  final PhlutsColor? indicatorColor;

  /// Whether to adjust indicator color automatically based on label colors.
  final bool? automaticIndicatorColorAdjustment;

  /// Thickness of the tab indicator in logical pixels.
  @DoubleConverter()
  final double? indicatorWeight;

  /// Padding for the tab indicator.
  final PhlutsEdgeInsets? indicatorPadding;

  /// A custom decoration for the tab indicator.
  final PhlutsBoxDecoration? indicator;

  /// How the indicator's size is computed.
  final PhlutsTabBarIndicatorSize? indicatorSize;

  /// Color of selected tab labels.
  final PhlutsColor? labelColor;

  /// Text style of selected tab labels.
  final PhlutsTextStyle? labelStyle;

  /// Padding added to each label.
  final PhlutsEdgeInsets? labelPadding;

  /// Color of unselected tab labels.
  final PhlutsColor? unselectedLabelColor;

  /// Text style of unselected tab labels.
  final PhlutsTextStyle? unselectedLabelStyle;

  /// Drag start behavior for drag gestures.
  final PhlutsDragStartBehavior? dragStartBehavior;

  /// Whether tapping tabs should include feedback.
  final bool? enableFeedback;

  /// Scroll physics for the tab bar.
  final PhlutsScrollPhysics? physics;

  /// How the tabs should be aligned.
  final PhlutsTabAlignment? tabAlignment;

  /// Divider color drawn below the tab bar (Material 3).
  final PhlutsColor? dividerColor;

  /// Divider height drawn below the tab bar (Material 3).
  @DoubleConverter()
  final double? dividerHeight;

  /// Widget type identifier.
  @override
  String get type => WidgetType.tabBar.name;

  /// Creates a [PhlutsTabBar] from a JSON map.
  factory PhlutsTabBar.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTabBarFromJson(json);

  /// Converts this [PhlutsTabBar] to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsTabBarToJson(this);
}
