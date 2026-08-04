import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_fractionally_sized_box.g.dart';

/// A Phluts widget that sizes its child to a fraction of the available space.
///
/// This widget corresponds to Flutter's FractionallySizedBox and sizes its
/// child to a fraction of the total available space.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsFractionallySizedBox(
///   widthFactor: 0.8,
///   heightFactor: 0.6,
///   alignment: PhlutsAlignment.center,
///   child: PhlutsContainer(color: '#FF0000'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "fractionallySizedBox",
///   "widthFactor": 0.8,
///   "heightFactor": 0.6,
///   "alignment": "center",
///   "child": {"type": "container", "color": "#FF0000"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsFractionallySizedBox extends PhlutsWidget {
  /// Creates a fractionally sized box with optional size factors and alignment.
  const PhlutsFractionallySizedBox({
    this.widthFactor,
    this.heightFactor,
    this.alignment,
    this.child,
  });

  /// The fraction of the available width to use (0.0 to 1.0).
  @DoubleConverter()
  final double? widthFactor;

  /// The fraction of the available height to use (0.0 to 1.0).
  @DoubleConverter()
  final double? heightFactor;

  /// How to align the child within the available space.
  final PhlutsAlignment? alignment;

  /// The widget to size fractionally.
  final PhlutsWidget? child;

  @override
  String get type => WidgetType.fractionallySizedBox.name;

  /// Creates a [PhlutsFractionallySizedBox] from a JSON map.
  factory PhlutsFractionallySizedBox.fromJson(Map<String, dynamic> json) =>
      _$PhlutsFractionallySizedBoxFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsFractionallySizedBoxToJson(this);
}
