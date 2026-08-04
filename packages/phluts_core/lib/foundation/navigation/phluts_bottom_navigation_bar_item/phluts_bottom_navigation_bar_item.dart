import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';

part 'phluts_bottom_navigation_bar_item.g.dart';

/// Enum mirroring Flutter's [BottomNavigationBarType].
///
/// - [fixed]: "Fixed" type where items are fixed in place.
/// - [shifting]: "Shifting" type where the selected item is emphasized and items can shift.
enum PhlutsBottomNavigationBarType {
  /// Items are fixed in place and share equal space.
  fixed,

  /// The selected item is emphasized and items can shift position/size.
  shifting,
}

/// Enum mirroring Flutter's [BottomNavigationBarLandscapeLayout].
///
/// - [spread]: Items are spread across available width.
/// - [centered]: Items are centered.
/// - [linear]: Items are laid out linearly.
enum PhlutsBottomNavigationBarLandscapeLayout {
  /// Spread items across the available width.
  spread,

  /// Center items within the available width.
  centered,

  /// Lay out items linearly without spreading.
  linear,
}

/// A Phluts model representing a Flutter [BottomNavigationBarItem].
///
/// Each item config consists of an icon, a label, and optional variants.
///
/// See also:
///  * Flutter's BottomNavigationBarItem docs (`https://api.flutter.dev/flutter/widgets/BottomNavigationBarItem-class.html`)
@JsonSerializable(explicitToJson: true)
class PhlutsBottomNavigationBarItem extends PhlutsElement {
  /// Creates a [PhlutsBottomNavigationBarItem].
  const PhlutsBottomNavigationBarItem({
    required this.icon,
    required this.label,
    this.activeIcon,
    this.backgroundColor,
    this.tooltip,
  });

  /// The default icon widget.
  final PhlutsWidget icon;

  /// The text label.
  final String label;

  /// The icon shown when this item is active.
  final PhlutsWidget? activeIcon;

  /// Background color when this item is active.
  final String? backgroundColor;

  /// Tooltip text for long-press.
  final String? tooltip;

  /// Creates a [PhlutsBottomNavigationBarItem] from JSON.
  factory PhlutsBottomNavigationBarItem.fromJson(Map<String, dynamic> json) =>
      _$PhlutsBottomNavigationBarItemFromJson(json);

  /// Converts this [PhlutsBottomNavigationBarItem] to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsBottomNavigationBarItemToJson(this);
}
