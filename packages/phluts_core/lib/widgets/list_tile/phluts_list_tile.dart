import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/phluts_core.dart';

part 'phluts_list_tile.g.dart';

/// A Phluts model for a fixed-height row that typically contains text, a
/// leading or trailing icon, or other widgets. This model corresponds to
/// Flutter's [ListTile] widget.
///
/// Use [PhlutsListTile] to create items in a list.
///
/// Example:
///
///
/// ```dart
/// PhlutsListTile(
///   leading: PhlutsIcon(icon: PhlutsIcons.album),
///   title: PhlutsText('The Enchanted Nightingale'),
///   subtitle: PhlutsText('Music by Julie Gable. Lyrics by Sidney Stein.'),
///   trailing: PhlutsIcon(icon: PhlutsIcons.more_vert),
///   onTap: PhlutsAction(type: PhlutsActionType.debugLog, args: {'message': 'Tapped on tile!'}),
///   isThreeLine: true,
/// )
/// ```
///
///
/// ```json
/// {
///   "widget": "ListTile",
///   "leading": {
///     "widget": "Icon",
///     "icon": "album"
///   },
///   "title": {
///     "widget": "Text",
///     "data": "The Enchanted Nightingale"
///   },
///   "subtitle": {
///     "widget": "Text",
///     "data": "Music by Julie Gable. Lyrics by Sidney Stein."
///   },
///   "trailing": {
///     "widget": "Icon",
///     "icon": "more_vert"
///   },
///   "onTap": {
///     "type": "debugLog",
///     "args": {"message": "Tapped on tile!"}
///   },
///   "isThreeLine": true
/// }
/// ```
///
/// See also:
///  * Flutter's [ListTile documentation](https://api.flutter.dev/flutter/material/ListTile-class.html)
@JsonSerializable(explicitToJson: true)
class PhlutsListTile extends PhlutsWidget {
  /// Creates a [PhlutsListTile] with the given properties.
  const PhlutsListTile({
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.isThreeLine,
    this.dense,
    this.visualDensity,
    this.shape,
    this.style,
    this.selectedColor,
    this.iconColor,
    this.textColor,
    this.contentPadding,
    this.enabled,
    this.onTap,
    this.onLongPress,
    this.mouseCursor,
    this.selected,
    this.focusColor,
    this.hoverColor,
    this.autofocus,
    this.tileColor,
    this.selectedTileColor,
    this.enableFeedback,
    this.horizontalTitleGap,
    this.minVerticalPadding,
    this.minLeadingWidth,
    this.titleAlignment,
  });

  /// A widget to display before the [title].
  final PhlutsWidget? leading;

  /// The primary content of the list tile.
  final PhlutsWidget? title;

  /// Additional content displayed below the [title].
  final PhlutsWidget? subtitle;

  /// A widget to display after the [title].
  final PhlutsWidget? trailing;

  /// Whether this list tile is intended to display three lines of text.
  final bool? isThreeLine;

  /// Whether this list tile is part of a vertically dense list.
  final bool? dense;

  /// Defines the compactness of the list tile.
  final PhlutsVisualDensity? visualDensity;

  /// The shape of the tile's [InkWell].
  final PhlutsShapeBorder? shape;

  /// Defines the tile's visual style.
  final PhlutsListTileStyle? style;

  /// The color of the tile's text and icons when [selected] is true.
  final String? selectedColor;

  /// The color of the tile's icons when [selected] is false.
  final String? iconColor;

  /// The color of the tile's text when [selected] is false.
  final String? textColor;

  /// The tile's internal padding.
  final PhlutsEdgeInsets? contentPadding;

  /// Whether this list tile is interactive.
  final bool? enabled;

  /// An action to perform when the user taps this list tile.
  final PhlutsAction? onTap;

  /// An action to perform when the user long-presses this list tile.
  final PhlutsAction? onLongPress;

  /// The cursor for a mouse pointer when it enters or is hovering over the widget.
  final PhlutsMouseCursor? mouseCursor;

  /// Whether this tile is selected.
  final bool? selected;

  /// The color for the tile's [Material] when it has the input focus.
  final String? focusColor;

  /// The color for the tile's [Material] when a pointer is hovering over it.
  final String? hoverColor;

  /// Whether this widget should automatically gain focus when it is visible.
  final bool? autofocus;

  /// Defines the background color of the [ListTile] when [selected] is false.
  final String? tileColor;

  /// Defines the background color of the [ListTile] when [selected] is true.
  final String? selectedTileColor;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  final bool? enableFeedback;

  /// The horizontal gap between the [leading] or [trailing] widget and the
  /// [title] and [subtitle] widgets.
  final double? horizontalTitleGap;

  /// The minimum padding on the top and bottom of the title and subtitle widgets.
  final double? minVerticalPadding;

  /// The minimum width of the [leading] widget.
  final double? minLeadingWidth;

  /// Defines how the [title] and [subtitle] are vertically aligned relative
  /// to the [leading] and [trailing] widgets.
  final PhlutsListTileTitleAlignment? titleAlignment;

  /// Widget type identifier.
  @override
  String get type => WidgetType.listTile.name;

  /// Creates a [PhlutsListTile] from a JSON map.
  factory PhlutsListTile.fromJson(Map<String, dynamic> json) =>
      _$PhlutsListTileFromJson(json);

  /// Converts this [PhlutsListTile] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsListTileToJson(this);
}
