import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_image.g.dart';

/// A Phluts widget that displays an image.
///
/// This widget corresponds to Flutter's Image widget and can display
/// images from various sources including assets, network, and files.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsImage(
///   src: 'assets/logo.png',
///   width: 200,
///   height: 100,
///   fit: PhlutsBoxFit.cover,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "image",
///   "src": "assets/logo.png",
///   "width": 200,
///   "height": 100,
///   "fit": "cover"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsImage extends PhlutsWidget {
  /// Creates an image widget with the specified source and options.
  const PhlutsImage({
    required this.src,
    this.alignment,
    this.imageType,
    this.color,
    this.width,
    this.height,
    this.fit,
    this.repeat,
    this.filterQuality,
    this.semanticLabel,
    this.excludeFromSemantics,
  });

  /// Creates an image widget that loads from application assets.
  const PhlutsImage.asset(
    String path, {
    this.alignment,
    this.color,
    this.width,
    this.height,
    this.fit,
    this.repeat,
    this.filterQuality,
    this.semanticLabel,
    this.excludeFromSemantics,
  }) : src = path,
       imageType = PhlutsImageType.asset;

  /// Creates an image widget that loads from a network URL.
  const PhlutsImage.network(
    String url, {
    this.alignment,
    this.color,
    this.width,
    this.height,
    this.fit,
    this.repeat,
    this.filterQuality,
    this.semanticLabel,
    this.excludeFromSemantics,
  }) : src = url,
       imageType = PhlutsImageType.network;

  /// Creates an image widget that loads from a local file path.
  const PhlutsImage.file(
    String path, {
    this.alignment,
    this.color,
    this.width,
    this.height,
    this.fit,
    this.repeat,
    this.filterQuality,
    this.semanticLabel,
    this.excludeFromSemantics,
  }) : src = path,
       imageType = PhlutsImageType.file;

  /// The source path or URL of the image to display.
  final String src;

  /// How to align the image within its bounds.
  final PhlutsAlignment? alignment;

  /// The type of image source (asset, network, etc.).
  final PhlutsImageType? imageType;

  /// A color filter to apply to the image.
  final PhlutsColor? color;

  /// The width of the image in logical pixels.
  @DoubleConverter()
  final double? width;

  /// The height of the image in logical pixels.
  @DoubleConverter()
  final double? height;

  /// How the image should be inscribed into the space allocated during layout.
  final PhlutsBoxFit? fit;

  /// How the image should be repeated if it doesn't fill its layout bounds.
  final PhlutsImageRepeat? repeat;

  /// The quality level for image filtering operations.
  final PhlutsFilterQuality? filterQuality;

  /// A semantic description of the image for accessibility.
  final String? semanticLabel;

  /// Whether to exclude this image from semantics.
  final bool? excludeFromSemantics;

  @override
  String get type => WidgetType.image.name;

  /// Creates a [PhlutsImage] from a JSON map.
  factory PhlutsImage.fromJson(Map<String, dynamic> json) =>
      _$PhlutsImageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsImageToJson(this);
}
