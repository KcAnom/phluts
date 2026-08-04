import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_visibility.g.dart';

/// A Phluts model representing Flutter's [Visibility] widget.
///
/// Controls the visibility of its child widget.
///
/// ```dart
/// PhlutsVisibility(
///   visible: true,
///   child: PhlutsText(data: 'Visible Text'),
///   replacement: PhlutsText(data: 'Replacement when not visible'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "visibility",
///   "visible": true,
///   "child": {"type": "text", "data": "Visible Text"},
///   "replacement": {"type": "text", "data": "Replacement when not visible"}
/// }
/// ```
@JsonSerializable()
class PhlutsVisibility extends PhlutsWidget {
  /// Creates a [PhlutsVisibility] with the given properties.
  const PhlutsVisibility({
    this.visible,
    this.child,
    this.replacement,
    this.maintainState,
    this.maintainAnimation,
    this.maintainSize,
    this.maintainSemantics,
    this.maintainInteractivity,
  });

  /// The widget to show or hide.
  final PhlutsWidget? child;

  /// Whether the child is visible.
  /// Defaults to true in the Flutter widget.
  final bool? visible;

  /// The widget to show when the child is not visible.
  /// If null, and [maintainState], [maintainAnimation], [maintainSize],
  /// [maintainSemantics], and [maintainInteractivity] are all false,
  /// then the [child] is simply not included in the tree.
  final PhlutsWidget? replacement;

  /// Whether to maintain the State of the child when it is not visible.
  /// Defaults to false.
  final bool? maintainState;

  /// Whether to maintain the Animation of the child when it is not visible.
  /// Defaults to false.
  final bool? maintainAnimation;

  /// Whether to maintain the Size of the child when it is not visible.
  /// Defaults to false.
  final bool? maintainSize;

  /// Whether to maintain the Semantics of the child when it is not visible.
  /// Defaults to false.
  final bool? maintainSemantics;

  /// Whether to maintain the Interactivity of the child when it is not visible.
  /// Defaults to false.
  final bool? maintainInteractivity;

  /// Widget type identifier.
  @override
  String get type => WidgetType.visibility.name;

  /// Creates a [PhlutsVisibility] from JSON.
  factory PhlutsVisibility.fromJson(Map<String, dynamic> json) =>
      _$PhlutsVisibilityFromJson(json);

  /// Converts this PhlutsVisibility to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsVisibilityToJson(this);
}
