import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_sliver_to_box_adapter.g.dart';

/// A Phluts model representing Flutter's [SliverToBoxAdapter] widget.
///
/// A sliver that contains a single box widget.
///
/// {@tool snippet}
/// ```dart
/// const PhlutsSliverPadding(
///   padding: PhlutsEdgeInsets.all(16),
///   sliver: PhlutsSliverToBoxAdapter(...),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///     "type": "sliverPadding",
///     "padding": 16.0,
///     "sliver": {
///         "type": "sliverToBoxAdapter",
///         "child": {
///             "type": "container",
///             "height": 150,
///             "color": "#4CAF50",
///             "child": {
///                 "type": "center",
///                 "child": {
///                     "type": "text",
///                     "data": "I am a Box inside a SliverToBoxAdapter!",
///                     "style": {
///                         "color": "#FFFFFF",
///                         "fontWeight": "bold"
///                     }
///                 }
///             }
///         }
///     }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverToBoxAdapter documentation](https://api.flutter.dev/flutter/widgets/SliverToBoxAdapter-class.html)
@JsonSerializable()
class PhlutsSliverToBoxAdapter extends PhlutsWidget {
  /// Creates a [PhlutsSliverToBoxAdapter].
  const PhlutsSliverToBoxAdapter({this.child});

  /// The widget contained by this sliver.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.sliverToBoxAdapter.name;

  /// Creates a [PhlutsSliverToBoxAdapter] from a JSON map.
  factory PhlutsSliverToBoxAdapter.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSliverToBoxAdapterFromJson(json);

  /// Converts this [PhlutsSliverToBoxAdapter] instance to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSliverToBoxAdapterToJson(this);
}
