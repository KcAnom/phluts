import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_icon.g.dart';

/// A Phluts model representing Flutter's [Icon] widget.
///
/// Displays a graphical symbol that represents an application, file type,
/// or action.
///
/// ```dart
/// PhlutsIcon(
///   icon: 'home',
///   iconType: PhlutsIconType.material,
///   size: 24.0,
///   color: PhlutsColors.black,
/// )
/// ```
///
/// ```json
/// {
///   "type": "icon",
///   "icon": "home",
///   "iconType": "material",
///   "size": 24.0,
///   "color": "#000000"
/// }
/// ```
@JsonSerializable()
class PhlutsIcon extends PhlutsWidget {
  /// Creates an icon widget with the specified properties.
  const PhlutsIcon({
    required this.icon,
    this.iconType = PhlutsIconType.material,
    this.size,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.color,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
    this.applyTextScaling,
    this.blendMode,
  });

  /// The name/key of the icon (as defined in icon utils maps).
  final String icon;

  /// The icon library to use.
  final PhlutsIconType iconType;

  /// Size of the icon in logical pixels.
  @DoubleConverter()
  final double? size;

  /// Fill for the icon.
  @DoubleConverter()
  final double? fill;

  /// Weight for the icon.
  @DoubleConverter()
  final double? weight;

  /// Grade for the icon.
  @DoubleConverter()
  final double? grade;

  /// Optical size for the icon.
  @DoubleConverter()
  final double? opticalSize;

  /// Color of the icon.
  final String? color;

  /// Shadows for the icon.
  final List<PhlutsShadow>? shadows;

  /// Semantic label for accessibility.
  final String? semanticLabel;

  /// The text direction to use for resolving certain icons.
  final PhlutsTextDirection? textDirection;

  /// Whether to apply text scaling to the icon.
  final bool? applyTextScaling;

  /// Blend mode for the icon.
  final PhlutsBlendMode? blendMode;

  /// Widget type identifier.
  @override
  String get type => WidgetType.icon.name;

  /// Creates a [PhlutsIcon] from JSON.
  factory PhlutsIcon.fromJson(Map<String, dynamic> json) =>
      _$PhlutsIconFromJson(json);

  /// Converts this [PhlutsIcon] to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsIconToJson(this);
}
