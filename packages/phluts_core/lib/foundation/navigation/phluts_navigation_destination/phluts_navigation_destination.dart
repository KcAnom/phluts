import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';

part 'phluts_navigation_destination.g.dart';

/// A Phluts model representing Flutter's [NavigationDestination].
///
/// Used as a child of [PhlutsNavigationBar] to define a single
/// destination (icon, optional selected icon, label and tooltip).
///
/// Dart example:
/// ```dart
/// PhlutsNavigationDestination(
///   icon: PhlutsIcon(icon: 'home_outlined'),
///   selectedIcon: PhlutsIcon(icon: 'home'),
///   label: 'Home',
/// )
/// ```
///
/// JSON example:
/// ```json
/// {
///   "icon": {"type": "icon", "icon": "home_outlined"},
///   "selectedIcon": {"type": "icon", "icon": "home"},
///   "label": "Home"
/// }
/// ```
///
/// See also:
///  * Flutter's NavigationDestination docs (`https://api.flutter.dev/flutter/material/NavigationDestination-class.html`)
@JsonSerializable(explicitToJson: true)
class PhlutsNavigationDestination extends PhlutsElement {
  /// Creates a [PhlutsNavigationDestination].
  const PhlutsNavigationDestination({
    required this.icon,
    required this.label,
    this.selectedIcon,
    this.tooltip,
    this.enabled,
  });

  /// The icon shown when this destination is unselected.
  ///
  /// Type: [PhlutsWidget]
  final PhlutsWidget icon;

  /// The text label for this destination.
  ///
  /// Type: [String]
  final String label;

  /// The icon shown when this destination is selected.
  ///
  /// Type: [PhlutsWidget]
  final PhlutsWidget? selectedIcon;

  /// Tooltip text shown on long press.
  ///
  /// Type: [String]
  final String? tooltip;

  /// Whether this destination is enabled. Defaults to `true`.
  ///
  /// Type: [bool]
  final bool? enabled;

  /// Creates a [PhlutsNavigationDestination] from JSON.
  factory PhlutsNavigationDestination.fromJson(Map<String, dynamic> json) =>
      _$PhlutsNavigationDestinationFromJson(json);

  /// Converts this [PhlutsNavigationDestination] to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsNavigationDestinationToJson(this);
}
