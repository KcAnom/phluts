import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_backdrop_filter.g.dart';

/// A Phluts model representing Flutter's [BackdropFilter] widget.
///
/// Applies an [PhlutsImageFilter] to the existing painted content before
/// painting its [child]. Commonly used to create frosted glass blur effects.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsBackdropFilter(
///   filter: PhlutsImageFilter(type: PhlutsImageFilterType.blur, sigmaX: 10, sigmaY: 10),
///   child: PhlutsContainer(color: '#33FFFFFF'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "backdropFilter",
///   "filter": { "type": "blur", "sigmaX": 10, "sigmaY": 10 },
///   "child": { "type": "container", "color": "#33FFFFFF" }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's BackdropFilter documentation (`https://api.flutter.dev/flutter/widgets/BackdropFilter-class.html`)
@JsonSerializable(explicitToJson: true)
class PhlutsBackdropFilter extends PhlutsWidget {
  /// Creates a [PhlutsBackdropFilter].
  const PhlutsBackdropFilter({
    required this.filter,
    this.child,
    this.enabled,
    this.blendMode,
  });

  /// The image filter to apply to the painted content behind [child].
  final PhlutsImageFilter filter;

  /// The widget painted after applying the filter.
  final PhlutsWidget? child;

  /// Whether the filter should be applied.
  final bool? enabled;

  /// The blend mode to apply when blending the filter with existing content.
  final PhlutsBlendMode? blendMode;

  /// Widget type identifier.
  @override
  String get type => WidgetType.backdropFilter.name;

  /// Creates a [PhlutsBackdropFilter] from JSON.
  factory PhlutsBackdropFilter.fromJson(Map<String, dynamic> json) =>
      _$PhlutsBackdropFilterFromJson(json);

  /// Converts this [PhlutsBackdropFilter] to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsBackdropFilterToJson(this);
}
