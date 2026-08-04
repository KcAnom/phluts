import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_sliver_fill_remaining.g.dart';

/// A Phluts model representing Flutter's [SliverFillRemaining] widget.
///
/// Fills the remaining space in a `CustomScrollView` after all preceding
/// slivers have been laid out.
///
/// This widget is commonly used to display empty states, footers, or
/// centered content that should expand to occupy the remaining viewport.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsSliverFillRemaining(
///   hasScrollBody: false,
///   child: PhlutsCenter(
///     child: PhlutsText(data: 'No items available'),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "sliverFillRemaining",
///   "hasScrollBody": false,
///   "child": {
///     "type": "center",
///     "child": {
///       "type": "text",
///       "data": "No items available"
///     }
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverFillRemaining documentation]
///    (https://api.flutter.dev/flutter/widgets/SliverFillRemaining-class.html)
@JsonSerializable()
class PhlutsSliverFillRemaining extends PhlutsWidget {
  /// Creates a [PhlutsSliverFillRemaining] with the given properties.
  const PhlutsSliverFillRemaining({
    this.child,
    this.hasScrollBody,
    this.fillOverscroll,
  });

  /// The widget to display in the remaining space of the scroll view.
  final PhlutsWidget? child;

  /// Whether the [child] has a scrollable body.
  ///
  /// Defaults to `true`.
  final bool? hasScrollBody;

  /// Whether the sliver should stretch to fill the over-scroll area.
  ///
  /// Defaults to `false`.
  final bool? fillOverscroll;

  /// Widget type identifier.
  @override
  String get type => WidgetType.sliverFillRemaining.name;

  /// Creates a [PhlutsSliverFillRemaining] from a JSON map.
  factory PhlutsSliverFillRemaining.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSliverFillRemainingFromJson(json);

  /// Converts this [PhlutsSliverFillRemaining] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSliverFillRemainingToJson(this);
}
