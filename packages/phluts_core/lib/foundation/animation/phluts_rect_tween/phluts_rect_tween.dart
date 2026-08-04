import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/foundation/geometry/phluts_rect/phluts_rect.dart';

part 'phluts_rect_tween.g.dart';

/// A Phluts model representing a rectangle tween used by [Hero].
///
/// Controls how the bounding rectangle of the hero animates between routes.
/// Supported [type] values: `materialRectArcTween`, `materialRectCenterArcTween`,
/// or any other string to use a default [RectTween].
@JsonSerializable()
class PhlutsRectTween {
  /// Creates a [PhlutsRectTween].
  const PhlutsRectTween({required this.type, this.begin, this.end});

  /// The tween type identifier.
  final String type;

  /// The starting rectangle.
  final PhlutsRect? begin;

  /// The ending rectangle.
  final PhlutsRect? end;

  /// Creates a [PhlutsRectTween] from a JSON map.
  factory PhlutsRectTween.fromJson(Map<String, dynamic> json) =>
      _$PhlutsRectTweenFromJson(json);

  /// Converts this [PhlutsRectTween] instance to a JSON map.
  Map<String, dynamic> toJson() => _$PhlutsRectTweenToJson(this);
}
