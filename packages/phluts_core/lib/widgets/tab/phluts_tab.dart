import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_tab.g.dart';

/// A Phluts model representing Flutter's [Tab] widget.
///
/// A material design tab that can display text, an icon, or both.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsTab(
///   text: 'Home',
///   icon: PhlutsIcon(icon: 'home'),
///   iconMargin: PhlutsEdgeInsets.symmetric(horizontal: 16),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "tab",
///   "text": "Home",
///   "icon": { "type": "icon", "icon": "home" },
///   "iconMargin": { "type": "symmetric", "horizontal": 16 }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Tab documentation (`https://api.flutter.dev/flutter/material/Tab-class.html`)
@JsonSerializable()
class PhlutsTab extends PhlutsWidget {
  /// Creates a [PhlutsTab].
  const PhlutsTab({
    this.text,
    this.icon,
    this.iconMargin,
    this.height,
    this.child,
  });

  /// The text to display on the tab.
  final String? text;

  /// The icon widget to display on the tab.
  final PhlutsWidget? icon;

  /// The margin around the icon in the tab.
  final PhlutsEdgeInsets? iconMargin;

  /// The height of the tab.
  @DoubleConverter()
  final double? height;

  /// A custom child widget for the tab content.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.tab.name;

  /// Creates a [PhlutsTab] from a JSON map.
  factory PhlutsTab.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTabFromJson(json);

  /// Converts this [PhlutsTab] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsTabToJson(this);
}
