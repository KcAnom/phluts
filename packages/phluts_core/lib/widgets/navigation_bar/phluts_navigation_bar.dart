import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_navigation_bar.g.dart';

/// A Phluts model representing Flutter's Material 3 [NavigationBar].
///
/// Displays a horizontal bar of [PhlutsNavigationDestination]s, typically
/// placed in [PhlutsScaffold]'s `bottomNavigationBar` slot. Pair with a
/// [PhlutsDefaultNavigationController] to drive selection state.
///
/// Dart example:
/// ```dart
/// PhlutsNavigationBar(
///   destinations: [
///     PhlutsNavigationDestination(
///       icon: PhlutsIcon(icon: 'home_outlined'),
///       selectedIcon: PhlutsIcon(icon: 'home'),
///       label: 'Home',
///     ),
///     PhlutsNavigationDestination(
///       icon: PhlutsIcon(icon: 'settings_outlined'),
///       selectedIcon: PhlutsIcon(icon: 'settings'),
///       label: 'Settings',
///     ),
///   ],
/// )
/// ```
///
/// JSON example:
/// ```json
/// {
///   "type": "navigationBar",
///   "destinations": [
///     {
///       "icon": {"type": "icon", "icon": "home_outlined"},
///       "selectedIcon": {"type": "icon", "icon": "home"},
///       "label": "Home"
///     },
///     {
///       "icon": {"type": "icon", "icon": "settings_outlined"},
///       "selectedIcon": {"type": "icon", "icon": "settings"},
///       "label": "Settings"
///     }
///   ]
/// }
/// ```
///
/// See also:
///  * Flutter's NavigationBar docs (`https://api.flutter.dev/flutter/material/NavigationBar-class.html`)
@JsonSerializable(explicitToJson: true)
class PhlutsNavigationBar extends PhlutsWidget {
  /// Creates a navigation bar with the specified properties.
  const PhlutsNavigationBar({
    required this.destinations,
    this.animationDuration,
    this.selectedIndex,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.indicatorColor,
    this.indicatorShape,
    this.height,
    this.labelBehavior,
    this.labelTextStyle,
    this.labelPadding,
    this.maintainBottomViewPadding,
  });

  /// The destinations shown in the navigation bar.
  ///
  /// Type: [PhlutsNavigationDestination]
  final List<PhlutsNavigationDestination> destinations;

  /// Transition time for each destination as it goes between selected
  /// and unselected.
  ///
  /// Type: [PhlutsDuration]
  final PhlutsDuration? animationDuration;

  /// The initial selected destination index. Ignored when a
  /// [PhlutsDefaultNavigationController] is provided.
  ///
  /// Type: [int]
  final int? selectedIndex;

  /// The color of the [NavigationBar] itself.
  ///
  /// Type: [String] (hex color)
  final String? backgroundColor;

  /// The elevation of the navigation bar.
  ///
  /// Type: [double]
  @DoubleConverter()
  final double? elevation;

  /// The color used for the drop shadow to indicate elevation.
  ///
  /// Type: [String] (hex color)
  final String? shadowColor;

  /// The color used as an overlay on [backgroundColor] to indicate
  /// elevation.
  ///
  /// Type: [String] (hex color)
  final String? surfaceTintColor;

  /// The color of the selected destination's indicator.
  ///
  /// Type: [String] (hex color)
  final String? indicatorColor;

  /// The shape of the selected destination's indicator.
  ///
  /// Type: [PhlutsBorder]
  final PhlutsBorder? indicatorShape;

  /// The height of the navigation bar.
  ///
  /// Type: [double]
  @DoubleConverter()
  final double? height;

  /// Defines how destination labels are laid out and when they are
  /// displayed.
  ///
  /// Type: [PhlutsNavigationDestinationLabelBehavior]
  final PhlutsNavigationDestinationLabelBehavior? labelBehavior;

  /// The text style for destination labels.
  ///
  /// Type: [PhlutsTextStyle]
  final PhlutsTextStyle? labelTextStyle;

  /// The padding around each destination's label widget.
  ///
  /// Type: [PhlutsEdgeInsets]
  final PhlutsEdgeInsets? labelPadding;

  /// Whether the underlying [SafeArea] should maintain the bottom
  /// `viewPadding` instead of the bottom `padding`.
  ///
  /// Type: [bool]
  final bool? maintainBottomViewPadding;

  /// Widget type identifier.
  @override
  String get type => WidgetType.navigationBar.name;

  /// Creates a [PhlutsNavigationBar] from a JSON map.
  factory PhlutsNavigationBar.fromJson(Map<String, dynamic> json) =>
      _$PhlutsNavigationBarFromJson(json);

  /// Converts this [PhlutsNavigationBar] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsNavigationBarToJson(this);
}
