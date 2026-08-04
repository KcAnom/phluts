import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_sliver_opacity.g.dart';

/// A Phluts model representing Flutter's [SliverOpacity] widget.
///
/// Wraps a sliver and applies an opacity value to it.
/// Useful for fade effects inside a [CustomScrollView].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsSliverOpacity(
///   opacity: 0.5,
///   sliver: PhlutsSliverToBoxAdapter(
///     child: PhlutsText(data: 'Faded content'),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "sliverOpacity",
///   "opacity": 0.5,
///   "sliver": {
///     "type": "sliverToBoxAdapter",
///     "child": {
///       "type": "text",
///       "data": "Faded content"
///     }
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverOpacity documentation](https://api.flutter.dev/flutter/widgets/SliverOpacity-class.html)
@JsonSerializable()
class PhlutsSliverOpacity extends PhlutsWidget {
  /// Creates a [PhlutsSliverOpacity].
  const PhlutsSliverOpacity({
    required this.opacity,
    this.alwaysIncludeSemantics,
    this.sliver,
  });

  /// Opacity of the sliver.
  ///
  /// Must be between 0.0 and 1.0.
  @DoubleConverter()
  final double opacity;

  /// Whether the sliver should always be included in the semantics tree.
  final bool? alwaysIncludeSemantics;

  /// The sliver to which the opacity is applied.
  final PhlutsWidget? sliver;

  @override
  String get type => WidgetType.sliverOpacity.name;

  /// Creates a [PhlutsSliverOpacity] from a JSON map.
  factory PhlutsSliverOpacity.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSliverOpacityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsSliverOpacityToJson(this);
}
