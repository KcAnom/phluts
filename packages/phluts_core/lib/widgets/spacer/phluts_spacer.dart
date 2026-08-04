import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_spacer.g.dart';

/// A Phluts model representing Flutter's [Spacer] widget.
///
/// Inserts an adjustable, empty space in a [Row], [Column], or [Flex].
/// The amount of space taken is controlled by [flex] relative to
/// the other flexible children.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsRow(children: const [
///   PhlutsText(data: 'Left'),
///   PhlutsSpacer(),
///   PhlutsText(data: 'Right'),
/// ])
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "row",
///   "children": [
///     {"type": "text", "data": "Left"},
///     {"type": "spacer"},
///     {"type": "text", "data": "Right"}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsSpacer extends PhlutsWidget {
  /// Creates a [PhlutsSpacer] that takes space according to [flex].
  const PhlutsSpacer({this.flex});

  /// The flex factor to use for this spacer.
  ///
  /// If null, defaults to 1. Higher values take more available main-axis space.
  final int? flex;

  /// Widget type identifier.
  @override
  String get type => WidgetType.spacer.name;

  /// Creates a [PhlutsSpacer] from a JSON map.
  factory PhlutsSpacer.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSpacerFromJson(json);

  /// Converts this [PhlutsSpacer] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSpacerToJson(this);
}
