import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_fitted_box.g.dart';

/// A Phluts widget that scales and positions its child within itself.
///
/// This widget corresponds to Flutter's FittedBox and scales its child
/// to fit within the available space according to the specified fit and alignment.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsFittedBox(
///   fit: PhlutsBoxFit.contain,
///   alignment: PhlutsAlignment.center,
///   child: PhlutsText(data: 'Fitted content'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "fittedBox",
///   "fit": "contain",
///   "alignment": "center",
///   "child": {"type": "text", "data": "Fitted content"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsFittedBox extends PhlutsWidget {
  /// Creates a [PhlutsFittedBox] that scales and positions its [child].
  const PhlutsFittedBox({
    this.fit,
    this.alignment,
    this.clipBehavior,
    this.child,
  });

  /// How the child should be scaled to fit within the box.
  final PhlutsBoxFit? fit;

  /// How to align the child within the box.
  final PhlutsAlignment? alignment;

  /// How to clip the child if it overflows.
  final PhlutsClip? clipBehavior;

  /// The widget to scale and position.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.fittedBox.name;

  /// Creates a [PhlutsFittedBox] from a JSON map.
  factory PhlutsFittedBox.fromJson(Map<String, dynamic> json) =>
      _$PhlutsFittedBoxFromJson(json);

  /// Converts this [PhlutsFittedBox] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsFittedBoxToJson(this);
}
