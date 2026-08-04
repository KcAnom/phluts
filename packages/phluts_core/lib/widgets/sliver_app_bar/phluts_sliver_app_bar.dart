import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_sliver_app_bar.g.dart';

/// A Phluts model representing Flutter's [SliverAppBar] widget.
///
/// A material design app bar that integrates with a `CustomScrollView`.
/// It can expand, collapse, pin, float, and snap as the user scrolls.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsSliverAppBar(
///   title: PhlutsText(data: 'Gallery'),
///   pinned: true,
///   expandedHeight: 200,
///   flexibleSpace: PhlutsContainer(color: 'blue', child: PhlutsText(data: 'Header')),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "sliverAppBar",
///   "title": {"type": "text", "data": "Gallery"},
///   "pinned": true,
///   "expandedHeight": 200,
///   "flexibleSpace": {"type": "container", "color": "blue", "child": {"type": "text", "data": "Header"}}
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverAppBar documentation](https://api.flutter.dev/flutter/material/SliverAppBar-class.html)
@JsonSerializable()
class PhlutsSliverAppBar extends PhlutsWidget {
  /// Creates a [PhlutsSliverAppBar] with the given properties.
  const PhlutsSliverAppBar({
    this.leading,
    this.automaticallyImplyLeading,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.scrolledUnderElevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.forceElevated,
    this.backgroundColor,
    this.foregroundColor,
    this.primary,
    this.centerTitle,
    this.excludeHeaderSemantics,
    this.titleSpacing,
    this.collapsedHeight,
    this.expandedHeight,
    this.floating,
    this.pinned,
    this.snap,
    this.stretch,
    this.stretchTriggerOffset,
    this.shape,
    this.toolbarHeight,
    this.leadingWidth,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
    this.forceMaterialTransparency,
    this.clipBehavior,
    this.actionsPadding,
  });

  /// Widget displayed before the [title].
  final PhlutsWidget? leading;

  /// Whether to imply a leading widget if [leading] is null.
  final bool? automaticallyImplyLeading;

  /// Primary widget displayed in the app bar.
  final PhlutsWidget? title;

  /// Widgets displayed after the [title].
  final List<PhlutsWidget>? actions;

  /// Widget stacked behind the toolbar and tab bar.
  final PhlutsWidget? flexibleSpace;

  /// Widget displayed across the bottom of the app bar (e.g., a TabBar).
  final PhlutsWidget? bottom;

  /// Z-coordinate at which to place the app bar.
  @DoubleConverter()
  final double? elevation;

  /// Elevation when content is scrolled under the app bar.
  @DoubleConverter()
  final double? scrolledUnderElevation;

  /// Color of the shadow below the app bar.
  final PhlutsColor? shadowColor;

  /// Color of the surface tint overlay applied to the background color.
  final PhlutsColor? surfaceTintColor;

  /// Whether to show the shadow appropriate for the elevation even if the
  /// content is not scrolled under the app bar.
  final bool? forceElevated;

  /// Fill color for the app bar's material.
  final PhlutsColor? backgroundColor;

  /// Default color for text and icons within the app bar.
  final PhlutsColor? foregroundColor;

  /// Whether this app bar is part of the primary scroll view.
  final bool? primary;

  /// Whether the [title] should be centered.
  final bool? centerTitle;

  /// Whether the [title] should be wrapped with header semantics.
  final bool? excludeHeaderSemantics;

  /// Spacing around the [title] on the horizontal axis.
  @DoubleConverter()
  final double? titleSpacing;

  /// Height of the app bar when collapsed.
  @DoubleConverter()
  final double? collapsedHeight;

  /// Height of the app bar when fully expanded.
  @DoubleConverter()
  final double? expandedHeight;

  /// Whether the app bar becomes visible as soon as the user scrolls towards it.
  final bool? floating;

  /// Whether the app bar remains visible at the start of the scroll view.
  final bool? pinned;

  /// If true, the floating app bar will snap into view.
  final bool? snap;

  /// Whether the app bar should stretch to fill the over-scroll area.
  final bool? stretch;

  /// Offset of overscroll required to activate [onStretchTrigger].
  @DoubleConverter()
  final double? stretchTriggerOffset;

  /// Shape of the app bar's material and its shadow.
  final PhlutsShapeBorder? shape;

  /// Height of the toolbar component.
  @DoubleConverter()
  final double? toolbarHeight;

  /// Width for the [leading] widget.
  @DoubleConverter()
  final double? leadingWidth;

  /// Default text style for the app bar's leading and actions widgets.
  final PhlutsTextStyle? toolbarTextStyle;

  /// Default text style for the app bar's [title] widget.
  final PhlutsTextStyle? titleTextStyle;

  /// Style for the system overlays (e.g., status bar).
  final PhlutsSystemUIOverlayStyle? systemOverlayStyle;

  /// Forces the app bar's material widget type to be MaterialType.transparency.
  final bool? forceMaterialTransparency;

  /// Content clipping behavior.
  final PhlutsClip? clipBehavior;

  /// Padding between the [actions] and the end of the app bar.
  final PhlutsEdgeInsets? actionsPadding;

  /// Widget type identifier.
  @override
  String get type => WidgetType.sliverAppBar.name;

  /// Creates a [PhlutsSliverAppBar] from a JSON map.
  factory PhlutsSliverAppBar.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSliverAppBarFromJson(json);

  /// Converts this [PhlutsSliverAppBar] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSliverAppBarToJson(this);
}
