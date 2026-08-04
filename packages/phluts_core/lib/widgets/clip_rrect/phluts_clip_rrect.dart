import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_clip_rrect.g.dart';

/// A Phluts model representing Flutter's [ClipRRect] widget.
///
/// Clips its [child] using a rounded-rectangle shape defined by [borderRadius].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsClipRRect(
///   borderRadius: PhlutsBorderRadius.only(topLeft: 12, topRight: 12),
///   clipBehavior: PhlutsClip.antiAlias,
///   child: PhlutsContainer(color: '#FF0000'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "clipRRect",
///   "borderRadius": {"topLeft": 12, "topRight": 12},
///   "clipBehavior": "antiAlias",
///   "child": {"type": "container", "color": "#FF0000"}
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's ClipRRect documentation (`https://api.flutter.dev/flutter/widgets/ClipRRect-class.html`)
@JsonSerializable(explicitToJson: true)
class PhlutsClipRRect extends PhlutsWidget {
  /// Creates a [PhlutsClipRRect].
  const PhlutsClipRRect({this.borderRadius, this.clipBehavior, this.child});

  /// The border radius of the rounded-rectangle clip.
  final PhlutsBorderRadius? borderRadius;

  /// The clipping behavior to use.
  final PhlutsClip? clipBehavior;

  /// The widget to be clipped.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.clipRRect.name;

  /// Creates a [PhlutsClipRRect] from a JSON map.
  factory PhlutsClipRRect.fromJson(Map<String, dynamic> json) =>
      _$PhlutsClipRRectFromJson(json);

  /// Converts this [PhlutsClipRRect] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsClipRRectToJson(this);
}
