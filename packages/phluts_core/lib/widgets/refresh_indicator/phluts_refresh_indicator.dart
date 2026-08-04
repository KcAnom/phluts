import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_refresh_indicator.g.dart';

/// A Phluts model representing Flutter's [RefreshIndicator] widget.
///
/// A widget that supports the Material "swipe to refresh" idiom.
///
/// ```dart
/// PhlutsRefreshIndicator(
///   onRefresh: PhlutsAction(type: 'myCustomRefreshAction'),
///   child: PhlutsListView(
///     children: [PhlutsText(data: 'Pull me down')],
///   ),
///   displacement: 60,
///   edgeOffset: 10.0,
///   color: PhlutsColor(value: 0xFFFFFFFF),
///   backgroundColor: PhlutsColor(value: 0xFF0000FF),
/// )
/// ```
///
/// ```json
/// {
///   "type": "refreshIndicator",
///   "onRefresh": {"type": "myCustomRefreshAction"},
///   "child": {
///     "type": "listView",
///     "children": [{"type": "text", "data": "Pull me down"}]
///   },
///   "displacement": 60.0,
///   "edgeOffset": 10.0,
///   "color": {"value": 0xFFFFFFFF},
///   "backgroundColor": {"value": 0xFF0000FF}
/// }
/// ```
@JsonSerializable()
class PhlutsRefreshIndicator extends PhlutsWidget {
  /// Creates a [PhlutsRefreshIndicator].
  const PhlutsRefreshIndicator({
    required this.child,
    required this.onRefresh,
    this.displacement,
    this.edgeOffset,
    this.color,
    this.backgroundColor,
    this.semanticsLabel,
    this.semanticsValue,
    this.strokeWidth,
    this.triggerMode,
  });

  /// The widget below this widget in the tree.
  final PhlutsWidget? child;

  /// A PhlutsAction that's called when the user has dragged the refresh indicator
  /// far enough to demonstrate that they want the app to refresh.
  final PhlutsAction? onRefresh;

  /// The distance from the child's top or bottom edge indicates how far the
  /// refresh indicator can be dragged to trigger a refresh.
  /// Defaults to 40.0 in the Flutter widget.
  @DoubleConverter()
  final double? displacement;

  /// The offset where the refresh indicator appears from the edge of the
  /// scrollable content.
  /// Defaults to 0.0 in the Flutter widget.
  @DoubleConverter()
  final double? edgeOffset;

  /// The progress indicator's foreground color.
  final PhlutsColor? color;

  /// The progress indicator's background color.
  final PhlutsColor? backgroundColor;

  /// The semantic label for the indicator.
  final String? semanticsLabel;

  /// The semantic value for the indicator.
  final String? semanticsValue;

  /// The thickness of the `RefreshProgressIndicator` circle, in logical pixels.
  /// Defaults to `RefreshProgressIndicator.defaultStrokeWidth` (2.0) in the Flutter widget.
  @DoubleConverter()
  final double? strokeWidth;

  /// Defines how this widget can be triggered.
  /// Defaults to [PhlutsRefreshIndicatorTriggerMode.onEdge] in the Flutter widget.
  final PhlutsRefreshIndicatorTriggerMode? triggerMode;

  /// Widget type identifier.
  @override
  String get type => WidgetType.refreshIndicator.name;

  /// Creates a [PhlutsRefreshIndicator] from JSON.
  factory PhlutsRefreshIndicator.fromJson(Map<String, dynamic> json) =>
      _$PhlutsRefreshIndicatorFromJson(json);

  /// Converts this PhlutsRefreshIndicator to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsRefreshIndicatorToJson(this);
}
