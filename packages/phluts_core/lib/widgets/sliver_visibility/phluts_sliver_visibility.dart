import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_sliver_visibility.g.dart';

/// A Phluts model representing Flutter's [SliverVisibility] widget.
///
/// Controls whether a sliver is visible in a [CustomScrollView].
/// When not visible, the sliver can optionally preserve layout,
/// state, animation, semantics, or interactivity.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsSliverVisibility(
///   visible: false,
///   sliver: PhlutsSliverToBoxAdapter(
///     child: PhlutsText(data: 'Hidden content'),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "sliverVisibility",
///   "visible": false,
///   "sliver": {
///     "type": "sliverToBoxAdapter",
///     "child": {
///       "type": "text",
///       "data": "Hidden content"
///     }
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverVisibility documentation](https://api.flutter.dev/flutter/widgets/SliverVisibility-class.html)
@JsonSerializable()
class PhlutsSliverVisibility extends PhlutsWidget {
  /// Creates a [PhlutsSliverVisibility].
  const PhlutsSliverVisibility({
    required this.sliver,
    this.replacementSliver,
    this.visible,
    this.maintainState,
    this.maintainAnimation,
    this.maintainSize,
    this.maintainSemantics,
    this.maintainInteractivity,
  });

  /// The sliver whose visibility is controlled.
  final PhlutsWidget sliver;

  /// The sliver to display when [visible] is false.
  final PhlutsWidget? replacementSliver;

  /// Whether the sliver is visible.
  ///
  /// Defaults to `true`.
  final bool? visible;

  /// Whether to maintain the state of the sliver when hidden.
  final bool? maintainState;

  /// Whether to maintain animations when the sliver is hidden.
  final bool? maintainAnimation;

  /// Whether to maintain layout space when the sliver is hidden.
  final bool? maintainSize;

  /// Whether to maintain semantics when the sliver is hidden.
  final bool? maintainSemantics;

  /// Whether to maintain interactivity when the sliver is hidden.
  final bool? maintainInteractivity;

  @override
  String get type => WidgetType.sliverVisibility.name;

  /// Creates a [PhlutsSliverVisibility] from a JSON map.
  factory PhlutsSliverVisibility.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSliverVisibilityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsSliverVisibilityToJson(this);
}
