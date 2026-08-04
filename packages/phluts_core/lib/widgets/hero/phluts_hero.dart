import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_hero.g.dart';

/// A Phluts model representing Flutter's [Hero] widget.
///
/// Enables hero animations between routes by tagging widgets with the same
/// [tag]. Optionally customizes the rectangle tween and shuttle/placeholder
/// builders. Renders its [child].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsHero(
///   tag: 'userAvatar',
///   child: PhlutsImage(network: 'https://example.com/avatar.png'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "hero",
///   "tag": "userAvatar",
///   "child": { "type": "image", "network": "https://example.com/avatar.png" }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Hero documentation (`https://api.flutter.dev/flutter/widgets/Hero-class.html`)
@JsonSerializable(explicitToJson: true)
class PhlutsHero extends PhlutsWidget {
  /// Creates a [PhlutsHero].
  const PhlutsHero({
    required this.tag,
    required this.child,
    this.createRectTween,
    this.flightShuttleBuilder,
    this.placeholderBuilder,
    this.transitionOnUserGestures,
  });

  /// The hero tag used to match heroes across routes.
  final dynamic tag;

  /// The widget subtree for this hero.
  final PhlutsWidget child;

  /// Optional rectangle tween configuration for the hero animation.
  final PhlutsRectTween? createRectTween;

  /// Optional widget used as the in-flight shuttle during the hero animation.
  final PhlutsWidget? flightShuttleBuilder;

  /// Optional placeholder widget displayed while the destination hero builds.
  final PhlutsWidget? placeholderBuilder;

  /// Whether the hero should participate in a user gesture driven transition.
  final bool? transitionOnUserGestures;

  /// Widget type identifier.
  @override
  String get type => WidgetType.hero.name;

  /// Creates a [PhlutsHero] from a JSON map.
  factory PhlutsHero.fromJson(Map<String, dynamic> json) =>
      _$PhlutsHeroFromJson(json);

  /// Converts this [PhlutsHero] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsHeroToJson(this);
}
