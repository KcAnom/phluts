import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_drawer.g.dart';

/// A Phluts model representing Flutter's [Drawer] widget.
///
/// A Material Design panel that slides in horizontally from the edge of a
/// [Scaffold] to show navigation links in an application.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsDrawer(
///   backgroundColor: PhlutsColors.white,
///   elevation: 16,
///   shadowColor: PhlutsColors.black54,
///   surfaceTintColor: PhlutsColors.transparent,
///   width: 304,
///   clipBehavior: Clip.hardEdge,
///   shape: PhlutsShapeBorder.rectangle(
///     borderRadius: PhlutsBorderRadius.all(8),
///   ),
///   child: PhlutsColumn(children: [/* ... */]),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "drawer",
///   "backgroundColor": "#FFFFFF",
///   "elevation": 16,
///   "shadowColor": "#88000000",
///   "surfaceTintColor": "transparent",
///   "width": 304,
///   "clipBehavior": "hardEdge",
///   "shape": {
///     "type": "rectangle",
///     "borderRadius": { "type": "all", "radius": 8 }
///   },
///   "child": { "type": "column", "children": [] }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Drawer documentation (`https://api.flutter.dev/flutter/material/Drawer-class.html`)
@JsonSerializable()
class PhlutsDrawer extends PhlutsWidget {
  /// Creates a [PhlutsDrawer].
  const PhlutsDrawer({
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.width,
    this.child,
    this.semanticLabel,
    this.clipBehavior,
  });

  /// Background color of the drawer.
  final PhlutsColor? backgroundColor;

  /// Elevation of the drawer in logical pixels.
  @DoubleConverter()
  final double? elevation;

  /// Color of the drawer's shadow.
  final PhlutsColor? shadowColor;

  /// Surface tint color applied on top of the drawer surface.
  final PhlutsColor? surfaceTintColor;

  /// The shape of the drawer.
  final PhlutsShapeBorder? shape;

  /// The width of the drawer.
  @DoubleConverter()
  final double? width;

  /// The primary content of the drawer.
  ///
  /// This is a Phluts widget subtree.
  final PhlutsWidget? child;

  /// A semantic label for the drawer.
  final String? semanticLabel;

  /// The clip behavior for the drawer's content.
  final PhlutsClip? clipBehavior;

  /// Widget type identifier for this model.
  @override
  String get type => WidgetType.drawer.name;

  /// Creates a [PhlutsDrawer] from a JSON map.
  factory PhlutsDrawer.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDrawerFromJson(json);

  /// Converts this [PhlutsDrawer] to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsDrawerToJson(this);
}
