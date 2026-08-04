import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_circular_progress_indicator.g.dart';

/// A Phluts model representing Flutter's [CircularProgressIndicator] widget.
///
/// Displays a circular progress indicator. Can be determinate when [value] is
/// provided (0.0 to 1.0), or indeterminate when [value] is null.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsCircularProgressIndicator(
///   value: 0.5,
///   color: PhlutsColors.blue,
///   strokeWidth: 4.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "circularProgressIndicator",
///   "value": 0.5,
///   "color": "#2196F3",
///   "strokeWidth": 4.0
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's CircularProgressIndicator documentation (`https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html`)
@JsonSerializable()
class PhlutsCircularProgressIndicator extends PhlutsWidget {
  /// Creates a [PhlutsCircularProgressIndicator].
  const PhlutsCircularProgressIndicator({
    this.value,
    this.backgroundColor,
    this.color,
    this.strokeWidth,
    this.strokeAlign,
    this.semanticsLabel,
    this.semanticsValue,
    this.strokeCap,
  });

  /// Progress value from 0.0 to 1.0 for determinate mode; null for indeterminate.
  @DoubleConverter()
  final double? value;

  /// Background color of the circular track.
  final PhlutsColor? backgroundColor;

  /// Foreground color of the progress indicator.
  final PhlutsColor? color;

  /// Width of the circular progress stroke.
  @DoubleConverter()
  final double? strokeWidth;

  /// Align of the stroke within the track.
  @DoubleConverter()
  final double? strokeAlign;

  /// Semantics label for accessibility.
  final String? semanticsLabel;

  /// Semantics value for accessibility.
  final String? semanticsValue;

  /// Stroke line cap style.
  final PhlutsStrokeCap? strokeCap;

  /// Widget type identifier.
  @override
  String get type => WidgetType.circularProgressIndicator.name;

  /// Creates a [PhlutsCircularProgressIndicator] from a JSON map.
  factory PhlutsCircularProgressIndicator.fromJson(Map<String, dynamic> json) =>
      _$PhlutsCircularProgressIndicatorFromJson(json);

  /// Converts this [PhlutsCircularProgressIndicator] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsCircularProgressIndicatorToJson(this);
}
