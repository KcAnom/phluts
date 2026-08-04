import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_single_child_scroll_view.g.dart';

/// A Phluts model for a box in which a single widget can be scrolled.
///
/// This widget is useful when you have a single box that will normally be
/// entirely visible, for example a clock face in a time picker, but you need to
/// make sure it can be scrolled if the container gets too small in one axis
/// (the scrollDirection).
///
/// Corresponds to Flutter's [SingleChildScrollView] widget.
///
/// Example:
///
/// ```dart
/// PhlutsSingleChildScrollView(
///   scrollDirection: PhlutsAxis.vertical,
///   child: PhlutsColumn(
///     children: [
///       PhlutsContainer(height: 200, color: '#FF0000'), // Red
///       PhlutsContainer(height: 200, color: '#00FF00'), // Green
///       PhlutsContainer(height: 200, color: '#0000FF'), // Blue
///       PhlutsContainer(height: 200, color: '#FFFF00'), // Yellow
///     ],
///   ),
/// )
/// ```
///
/// ```json
/// {
///   "widget": "SingleChildScrollView",
///   "scrollDirection": "vertical",
///   "child": {
///     "widget": "Column",
///     "children": [
///       {
///         "widget": "Container",
///         "height": 200,
///         "color": "#FF0000"
///       },
///       {
///         "widget": "Container",
///         "height": 200,
///         "color": "#00FF00"
///       },
///       {
///         "widget": "Container",
///         "height": 200,
///         "color": "#0000FF"
///       },
///       {
///         "widget": "Container",
///         "height": 200,
///         "color": "#FFFF00"
///       }
///     ]
///   }
/// }
/// ```
///
/// See also:
///  * Flutter's [SingleChildScrollView documentation](https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html)
@JsonSerializable()
class PhlutsSingleChildScrollView extends PhlutsWidget {
  /// Creates a [PhlutsSingleChildScrollView].
  ///
  /// All properties are optional. The parser will provide appropriate defaults
  /// from Flutter's [SingleChildScrollView] if they are not specified.
  const PhlutsSingleChildScrollView({
    this.scrollDirection,
    this.reverse,
    this.padding,
    this.primary,
    this.physics,
    this.child,
    this.dragStartBehavior,
    this.clipBehavior,
    this.restorationId,
    this.keyboardDismissBehavior,
  });

  /// The axis along which the scroll view scrolls.
  final PhlutsAxis? scrollDirection;

  /// Whether the scroll view scrolls in the reading direction.
  final bool? reverse;

  /// The amount of space by which to inset the child.
  final PhlutsEdgeInsets? padding;

  /// Whether this is the primary scroll view associated with the parent
  /// [PrimaryScrollController].
  final bool? primary;

  /// How the scroll view should respond to user input.
  final PhlutsScrollPhysics? physics;

  /// The widget that scrolls.
  final PhlutsWidget? child;

  /// Determines the way that drag start behavior is handled.
  final PhlutsDragStartBehavior? dragStartBehavior;

  /// {@macro flutter.material.Material.clipBehavior}
  ///
  /// Defaults to [Clip.hardEdge].
  final PhlutsClip? clipBehavior;

  /// {@macro flutter.widgets.scrollable.restorationId}
  final String? restorationId;

  /// {@macro flutter.widgets.scroll_view.keyboardDismissBehavior}
  final PhlutsScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;

  @override
  String get type => WidgetType.singleChildScrollView.name;

  /// Creates a [PhlutsSingleChildScrollView] from a JSON map.
  factory PhlutsSingleChildScrollView.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSingleChildScrollViewFromJson(json);

  /// Converts this [PhlutsSingleChildScrollView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSingleChildScrollViewToJson(this);
}
