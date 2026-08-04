import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_sliver_safe_area.g.dart';

/// A Phluts model representing Flutter's [SliverSafeArea] widget.
///
/// Insets its sliver child to avoid system UI intrusions
/// such as status bar, notch, or navigation bar.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsSliverSafeArea(
///   top: true,
///   sliver: PhlutsSliverToBoxAdapter(
///     child: PhlutsText(data: 'Hello World'),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "sliverSafeArea",
///   "top": true,
///   "sliver": {
///     "type": "sliverToBoxAdapter",
///     "child": {
///       "type": "text",
///       "data": "Hello World"
///     }
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsSliverSafeArea extends PhlutsWidget {
  /// Creates a [PhlutsSliverSafeArea].
  const PhlutsSliverSafeArea({
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.minimum,
    required this.sliver,
  });

  /// Whether to avoid intrusions on the left.
  final bool? left;

  /// Whether to avoid intrusions at the top.
  final bool? top;

  /// Whether to avoid intrusions on the right.
  final bool? right;

  /// Whether to avoid intrusions at the bottom.
  final bool? bottom;

  /// Minimum padding to apply.
  final PhlutsEdgeInsets? minimum;

  /// The sliver below this widget in the tree.
  final PhlutsWidget sliver;

  /// Widget type identifier.
  @override
  String get type => WidgetType.sliverSafeArea.name;

  /// Creates a [PhlutsSliverSafeArea] from JSON.
  factory PhlutsSliverSafeArea.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSliverSafeAreaFromJson(json);

  /// Converts this instance to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSliverSafeAreaToJson(this);
}
