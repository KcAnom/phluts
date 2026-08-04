import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_clip_oval.g.dart';

/// A Phluts model representing Flutter's [ClipOval] widget.
///
/// Clips its [child] using an oval (or circle if the bounds are a square).
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsClipOval(
///   clipBehavior: PhlutsClip.antiAlias,
///   child: PhlutsContainer(color: '#2196F3'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "clipOval",
///   "clipBehavior": "antiAlias",
///   "child": {"type": "container", "color": "#2196F3"}
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's ClipOval documentation (`https://api.flutter.dev/flutter/widgets/ClipOval-class.html`)
@JsonSerializable(explicitToJson: true)
class PhlutsClipOval extends PhlutsWidget {
  /// Creates a [PhlutsClipOval].
  const PhlutsClipOval({this.clipBehavior, this.child});

  /// The clipping behavior to use.
  ///
  /// Type: [PhlutsClip]
  final PhlutsClip? clipBehavior;

  /// The widget to be clipped by the oval.
  ///
  /// Type: [PhlutsWidget]
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.clipOval.name;

  /// Creates a [PhlutsClipOval] from a JSON map.
  factory PhlutsClipOval.fromJson(Map<String, dynamic> json) =>
      _$PhlutsClipOvalFromJson(json);

  /// Converts this [PhlutsClipOval] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsClipOvalToJson(this);
}
