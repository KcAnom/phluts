import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/colors/phluts_color/phluts_colors.dart';
import 'package:phluts_core/foundation/text/phluts_text_span/phluts_text_span.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';
import 'package:phluts_core/foundation/text/phluts_text_types.dart';

part 'phluts_text.g.dart';

/// A Phluts model representing Flutter's [Text] widget (and `Text.rich`).
///
/// Renders a string of text with optional styling, alignment, direction,
/// and span children.
///
/// Dart example:
/// ```dart
/// final widget = PhlutsText(
///   data: 'Hello',
///   style: PhlutsThemeData.textTheme.bodyMedium,
///   copyWithStyle: PhlutsTextStyle(color: PhlutsColors.blue),
/// );
/// ```
///
/// JSON example:
/// ```json
/// {
///   "type": "text",
///   "data": "Hello",
///   "style": "bodyMedium",
///   "copyWithStyle": {"color": "#FF2196F3"}
/// }
/// ```
///
/// Reference: Flutter `Text` https://api.flutter.dev/flutter/widgets/Text-class.html
@JsonSerializable()
class PhlutsText extends PhlutsWidget {
  /// Creates a [PhlutsText] widget.
  PhlutsText({
    required this.data,
    this.children,
    this.style,
    this.copyWithStyle,
    this.textAlign,
    this.textDirection,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.selectionColor,
  });

  /// The text string to display.
  ///
  /// Type: `String`
  final String data;

  /// Optional inline children as rich [TextSpan]-like nodes.
  ///
  /// Type: `List<PhlutsTextSpan>?`
  final List<PhlutsTextSpan>? children;

  /// Base text style.
  ///
  /// Can be a string (e.g., "bodyMedium") for theme styles or an object
  /// (e.g., {"color": "#FF2196F3"}) for custom styles.
  ///
  /// Type: [PhlutsTextStyle]
  final PhlutsTextStyle? style;

  /// Optional style overrides applied on top of [style].
  ///
  /// Can be a string (e.g., "bodyMedium") for theme styles or an object
  /// (e.g., {"color": "#FF2196F3"}) for custom styles.
  ///
  /// Any non-null fields in [copyWithStyle] override those from [style].
  ///
  /// Type: [PhlutsCustomTextStyle]
  final PhlutsCustomTextStyle? copyWithStyle;

  /// How the text should be aligned horizontally.
  ///
  /// Type: [PhlutsTextAlign]
  final PhlutsTextAlign? textAlign;

  /// The directionality of the text.
  ///
  /// Type: [PhlutsTextDirection]
  final PhlutsTextDirection? textDirection;

  /// Whether the text should break at soft line wraps.
  ///
  /// Type: `bool?`
  final bool? softWrap;

  /// How visual overflow should be handled.
  ///
  /// Type: [PhlutsTextOverflow]
  final PhlutsTextOverflow? overflow;

  /// The number used to scale text glyphs.
  ///
  /// Type: `double?`
  final double? textScaleFactor;

  /// An optional maximum number of lines for the text to span.
  ///
  /// Type: `int?`
  final int? maxLines;

  /// An alternative semantics label for this text.
  ///
  /// Type: `String?`
  final String? semanticsLabel;

  /// Defines how to measure the width of the text.
  ///
  /// Type: [PhlutsTextWidthBasis]
  final PhlutsTextWidthBasis? textWidthBasis;

  /// Color for text selection highlight.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? selectionColor;

  @override
  String get type => 'text';

  /// Converts this model to JSON.
  ///
  /// Returns: `Map<String, dynamic>`
  @override
  Map<String, dynamic> toJson() => _$PhlutsTextToJson(this);

  /// Creates a [PhlutsText] from JSON.
  ///
  /// Parameter: `json` – `Map<String, dynamic>`
  /// Returns: [PhlutsText]
  factory PhlutsText.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTextFromJson(json);
}
