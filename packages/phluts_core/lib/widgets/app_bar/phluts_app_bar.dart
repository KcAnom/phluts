import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_app_bar.g.dart';

/// A Phluts model representing Flutter's [AppBar] widget.
///
/// Displays a Material Design app bar at the top of the app.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsAppBar(
///   title: PhlutsText(data: 'Page Title'),
///   actions: [
///     PhlutsIconButton(icon: PhlutsIcon(icon: PhlutsIcons.search)),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "appBar",
///   "title": {"type": "text", "data": "Page Title"},
///   "actions": [
///     {"type": "iconButton", "icon": {"type": "icon", "icon": "search"}}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsAppBar extends PhlutsWidget {
  /// Creates an app bar with the specified properties.
  PhlutsAppBar({
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
    this.backgroundColor,
    this.foregroundColor,
    this.primary,
    this.centerTitle,
    this.excludeHeaderSemantics,
    this.titleSpacing,
    this.toolbarOpacity,
    this.bottomOpacity,
    this.toolbarHeight,
    this.leadingWidth,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
    this.forceMaterialTransparency,
    this.useDefaultSemanticsOrder,
    this.clipBehavior,
    this.actionsPadding,
  });

  /// A widget to display before the [title], typically a navigation button.
  final PhlutsWidget? leading;

  /// Whether to imply a [leading] widget (e.g., back button) if none is provided.
  final bool? automaticallyImplyLeading;

  /// The primary widget displayed in the app bar, usually a [PhlutsText].
  final PhlutsWidget? title;

  /// Widgets to display after the [title], typically action buttons.
  final List<PhlutsWidget>? actions;

  /// A widget stacked behind the toolbar and tab bar. Extends under the status bar.
  final PhlutsWidget? flexibleSpace;

  /// A widget displayed at the bottom of the app bar, typically a tab bar.
  final PhlutsWidget? bottom;

  /// The elevation of the app bar's material.
  final double? elevation;

  /// The elevation to use when content is scrolled under the app bar.
  final double? scrolledUnderElevation;

  /// The color of the shadow cast by the app bar's elevation.
  final PhlutsColor? shadowColor;

  /// The color used for the app bar's surface tint overlay.
  final PhlutsColor? surfaceTintColor;
  // Todo: Add support for shape
  // final shape;

  /// The background color of the app bar.
  final PhlutsColor? backgroundColor;

  /// The default color for text and icons within the app bar.
  final PhlutsColor? foregroundColor;

  // final iconTheme;

  // final actionsIconTheme;

  /// Whether this app bar is part of the app's primary scaffold.
  final bool? primary;

  /// Whether the [title] should be centered.
  final bool? centerTitle;

  /// Whether to exclude the app bar from the semantics tree header.
  final bool? excludeHeaderSemantics;

  /// Spacing around the [title]. When [leading] is null, spacing before the title.
  final double? titleSpacing;

  /// Opacity for the toolbar portion of the app bar.
  final double? toolbarOpacity;

  /// Opacity for the [bottom] widget of the app bar.
  final double? bottomOpacity;

  /// The height of the toolbar portion of the app bar.
  final double? toolbarHeight;

  /// The width allocated for the [leading] widget.
  final double? leadingWidth;

  /// The text style for the toolbar widgets.
  final PhlutsTextStyle? toolbarTextStyle;

  /// The text style for the [title] widget.
  final PhlutsTextStyle? titleTextStyle;

  /// The style to use for system overlays (status bar icons, etc.).
  final PhlutsSystemUIOverlayStyle? systemOverlayStyle;

  /// Whether to remove background and elevation for a transparent Material effect.
  final bool? forceMaterialTransparency;

  /// Whether to use the default semantics order for toolbar and [bottom].
  final bool? useDefaultSemanticsOrder;

  /// How to clip the content of the app bar.
  final PhlutsClip? clipBehavior;

  /// Outer padding applied around the [actions] row.
  final PhlutsEdgeInsets? actionsPadding;

  /// Creates a [PhlutsAppBar] from a JSON map.
  factory PhlutsAppBar.fromJson(Map<String, dynamic> json) =>
      _$PhlutsAppBarFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsAppBarToJson(this);

  @override
  String get type => WidgetType.appBar.name;
}
