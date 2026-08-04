import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_flexible.g.dart';

/// A Phluts model representing Flutter's [Flexible] widget.
///
/// Controls how a child of a [Row], [Column], or [Flex] flexes (expands or
/// contracts) to fill the available space along the main axis. Use [fit] to
/// specify whether the child can be smaller than the space allocated by its
/// [flex] factor.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsRow(children: const [
///   PhlutsFlexible(flex: 1, child: PhlutsText(data: 'Left')),
///   PhlutsFlexible(flex: 2, fit: PhlutsFlexFit.tight, child: PhlutsText(data: 'Right')),
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
///     {"type": "flexible", "flex": 1, "child": {"type": "text", "data": "Left"}},
///     {"type": "flexible", "flex": 2, "fit": "tight", "child": {"type": "text", "data": "Right"}}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsFlexible extends PhlutsWidget {
  /// Creates a [PhlutsFlexible] that controls how its [child] flexes within
  /// a [Row], [Column], or [Flex].
  const PhlutsFlexible({this.flex, this.fit, required this.child});

  /// The flex factor to use for this child.
  ///
  /// If null, defaults to 1. Higher values take proportionally more
  /// of the available main axis space.
  final int? flex;

  /// How this child is inscribed into the allocated space.
  ///
  /// Type: [PhlutsFlexFit]. When [PhlutsFlexFit.tight], the child is forced to
  /// fill the allocated space; when [PhlutsFlexFit.loose], the child can be
  /// at most as large as the allocated space.
  final PhlutsFlexFit? fit;

  /// The widget controlled by this [Flexible].
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.flexible.name;

  /// Creates a [PhlutsFlexible] from a JSON map.
  factory PhlutsFlexible.fromJson(Map<String, dynamic> json) =>
      _$PhlutsFlexibleFromJson(json);

  /// Converts this [PhlutsFlexible] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsFlexibleToJson(this);
}
