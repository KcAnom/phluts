import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/alignment/phluts_alignment.dart';
import 'package:phluts_core/foundation/effects/phluts_filter_quality.dart';
import 'package:phluts_core/foundation/geometry/phluts_rect/phluts_rect.dart';
import 'package:phluts_core/foundation/layout/phluts_box_fit.dart';
import 'package:phluts_core/foundation/ui_components/phluts_image_repeat.dart';
import 'package:phluts_core/foundation/ui_components/phluts_image_type.dart';

part 'phluts_decoration_image.g.dart';

/// An image to use as decoration in a box decoration.
///
/// This class defines how an image should be displayed as part of
/// a box decoration, including positioning, scaling, and rendering options.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsDecorationImage(
///   src: 'assets/background.png',
///   fit: PhlutsBoxFit.cover,
///   alignment: PhlutsAlignment.center,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "src": "assets/background.png",
///   "fit": "cover",
///   "alignment": "center"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsDecorationImage implements PhlutsElement {
  /// Creates a decoration image with the specified source and options.
  const PhlutsDecorationImage({
    required this.src,
    this.fit,
    this.imageType,
    this.alignment,
    this.centerSlice,
    this.repeat,
    this.matchTextDirection,
    this.scale,
    this.opacity,
    this.filterQuality,
    this.invertColors,
    this.isAntiAlias,
  });

  /// The source path or URL of the image.
  final String src;

  /// How the image should be inscribed into the decoration box.
  final PhlutsBoxFit? fit;

  /// The type of image source (asset, network, etc.).
  final PhlutsImageType? imageType;

  /// How to align the image within the decoration box.
  final PhlutsAlignment? alignment;

  /// The center slice for nine-patch images.
  final PhlutsRect? centerSlice;

  /// How the image should be repeated if it doesn't fill the box.
  final PhlutsImageRepeat? repeat;

  /// Whether to match the text direction for alignment.
  final bool? matchTextDirection;

  /// The scale factor for the image.
  final double? scale;

  /// The opacity to apply to the image (0.0 to 1.0).
  final double? opacity;

  /// The quality level for image filtering.
  final PhlutsFilterQuality? filterQuality;

  /// Whether to invert the colors of the image.
  final bool? invertColors;

  /// Whether to use anti-aliasing for the image.
  final bool? isAntiAlias;

  /// Creates a [PhlutsDecorationImage] from a JSON map.
  factory PhlutsDecorationImage.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDecorationImageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsDecorationImageToJson(this);
}
