import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';
part 'phluts_sliver_padding.g.dart';

/// A Phluts model representing Flutter's [SliverPadding] widget.
///
/// Insets its sliver child by the given padding.
///
/// {@tool snippet}
/// Dart Example:
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
///                     "data": "I am a Box inside a SliverPadding!",
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
///  * Flutter's [SliverPadding documentation](https://api.flutter.dev/flutter/widgets/SliverPadding-class.html)
@JsonSerializable()
class PhlutsSliverPadding extends PhlutsWidget {
  /// Creates a [PhlutsSliverPadding].
  const PhlutsSliverPadding({required this.sliver, required this.padding});

  /// The amount of space by which to inset the child sliver.
  final PhlutsEdgeInsets padding;

  /// The sliver to apply padding to.
  final PhlutsWidget sliver;

  /// Widget type identifier.
  @override
  String get type => WidgetType.sliverPadding.name;

  /// Creates a [PhlutsSliverPadding] from a JSON map.
  factory PhlutsSliverPadding.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSliverPaddingFromJson(json);

  /// Converts this [PhlutsSliverPadding] instance to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSliverPaddingToJson(this);
}
