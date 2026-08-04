import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/colors/phluts_color/phluts_colors.dart';
import 'package:phluts_core/foundation/text/phluts_text_types.dart';

part 'phluts_text_style.g.dart';

/// Discriminator for [PhlutsTextStyle] variants.
///
/// - `custom`: Explicit properties like color, fontSize, etc. (maps to Flutter TextStyle)
/// - `theme`: A style pulled from the current ThemeData.textTheme
enum PhlutsTextStyleType {
  /// Custom text style with explicit properties.
  custom,

  /// Theme-based text style from Material TextTheme.
  theme,
}

/// Material TextTheme style keys.
///
/// Maps one-to-one to properties on Flutter's `TextTheme`.
/// See: https://api.flutter.dev/flutter/material/TextTheme-class.html
enum PhlutsMaterialTextStyle {
  /// Maps to `TextTheme.displayLarge`.
  displayLarge,

  /// Maps to `TextTheme.displayMedium`.
  displayMedium,

  /// Maps to `TextTheme.displaySmall`.
  displaySmall,

  /// Maps to `TextTheme.headlineLarge`.
  headlineLarge,

  /// Maps to `TextTheme.headlineMedium`.
  headlineMedium,

  /// Maps to `TextTheme.headlineSmall`.
  headlineSmall,

  /// Maps to `TextTheme.titleLarge`.
  titleLarge,

  /// Maps to `TextTheme.titleMedium`.
  titleMedium,

  /// Maps to `TextTheme.titleSmall`.
  titleSmall,

  /// Maps to `TextTheme.bodyLarge`.
  bodyLarge,

  /// Maps to `TextTheme.bodyMedium`.
  bodyMedium,

  /// Maps to `TextTheme.bodySmall`.
  bodySmall,

  /// Maps to `TextTheme.labelLarge`.
  labelLarge,

  /// Maps to `TextTheme.labelMedium`.
  labelMedium,

  /// Maps to `TextTheme.labelSmall`.
  labelSmall,
}

/// Base interface for text styles.
///
/// Use one of the concrete implementations:
/// - [PhlutsCustomTextStyle] (explicit TextStyle properties)
/// - [PhlutsThemeTextStyle] (style from `ThemeData.textTheme`)
///
/// Dart example (custom):
/// ```dart
/// final style = PhlutsCustomTextStyle(fontSize: 16, color: PhlutsColors.blue);
/// ```
///
/// JSON example (custom):
/// ```json
/// { "type": "custom", "fontSize": 16, "color": "#FF2196F3" }
/// ```
///
/// Dart example (theme):
/// ```dart
/// final style = PhlutsTextStyle.fromTheme(
///   textTheme: PhlutsMaterialTextStyle.bodyMedium,
/// );
/// ```
///
/// JSON example (theme):
/// ```json
/// { "type": "theme", "textTheme": "bodyMedium" }
/// ```
///
/// References:
/// - Flutter TextStyle: https://api.flutter.dev/flutter/painting/TextStyle-class.html
/// - Flutter TextTheme: https://api.flutter.dev/flutter/material/TextTheme-class.html

/// A convenience class for creating theme text styles.
///
/// Provides easy access to all theme text styles through a fluent API.
///
/// Example:
/// ```dart
/// final style = PhlutsThemeData.textTheme.displayLarge;
/// final bodyStyle = PhlutsThemeData.textTheme.bodyMedium;
/// ```

/// A collection of all available theme text styles.
class PhlutsThemeTextStyles {
  /// Creates a [PhlutsThemeTextStyles] instance.
  const PhlutsThemeTextStyles();

  /// Display large text style.
  PhlutsThemeTextStyle get displayLarge =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.displayLarge);

  /// Display medium text style.
  PhlutsThemeTextStyle get displayMedium =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.displayMedium);

  /// Display small text style.
  PhlutsThemeTextStyle get displaySmall =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.displaySmall);

  /// Headline large text style.
  PhlutsThemeTextStyle get headlineLarge =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.headlineLarge);

  /// Headline medium text style.
  PhlutsThemeTextStyle get headlineMedium =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.headlineMedium);

  /// Headline small text style.
  PhlutsThemeTextStyle get headlineSmall =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.headlineSmall);

  /// Title large text style.
  PhlutsThemeTextStyle get titleLarge =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.titleLarge);

  /// Title medium text style.
  PhlutsThemeTextStyle get titleMedium =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.titleMedium);

  /// Title small text style.
  PhlutsThemeTextStyle get titleSmall =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.titleSmall);

  /// Body large text style.
  PhlutsThemeTextStyle get bodyLarge =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.bodyLarge);

  /// Body medium text style.
  PhlutsThemeTextStyle get bodyMedium =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.bodyMedium);

  /// Body small text style.
  PhlutsThemeTextStyle get bodySmall =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.bodySmall);

  /// Label large text style.
  PhlutsThemeTextStyle get labelLarge =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.labelLarge);

  /// Label medium text style.
  PhlutsThemeTextStyle get labelMedium =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.labelMedium);

  /// Label small text style.
  PhlutsThemeTextStyle get labelSmall =>
      PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.labelSmall);
}

/// Base interface for text styles.
abstract class PhlutsTextStyle implements PhlutsElement {
  /// Creates a custom text style with the given properties.
  ///
  /// This is a convenience factory constructor that returns a [PhlutsCustomTextStyle].
  /// For theme-based styles, use [PhlutsThemeData.textTheme] or [PhlutsTextStyle.fromTheme].
  ///
  /// Example:
  /// ```dart
  /// final style = PhlutsTextStyle(color: PhlutsColors.blue, fontSize: 16);
  /// ```
  factory PhlutsTextStyle({
    bool? inherit,
    PhlutsColor? color,
    PhlutsColor? backgroundColor,
    double? fontSize,
    PhlutsFontWeight? fontWeight,
    PhlutsFontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    PhlutsTextBaseline? textBaseline,
    double? height,
    PhlutsTextLeadingDistribution? leadingDistribution,
    PhlutsTextDecorationLine? decoration,
    PhlutsColor? decorationColor,
    PhlutsTextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    PhlutsTextOverflow? overflow,
  }) {
    return PhlutsCustomTextStyle(
      inherit: inherit,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      leadingDistribution: leadingDistribution,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      debugLabel: debugLabel,
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      package: package,
      overflow: overflow,
    );
  }

  /// Creates a [PhlutsTextStyle] with the given type.
  ///
  /// This is a protected constructor for subclasses.
  const PhlutsTextStyle._({required this.type});

  /// The variant discriminator.
  ///
  /// Type: [PhlutsTextStyleType]
  @JsonKey(includeToJson: true)
  final PhlutsTextStyleType type;

  /// Creates a [PhlutsTextStyle] from JSON.
  ///
  /// Handles different input formats:
  /// - String (e.g., "bodyMedium") -> [PhlutsThemeTextStyle]
  /// - Object (e.g., {"color": "#FF2196F3"}) -> [PhlutsCustomTextStyle]
  /// - [PhlutsTextStyle] values -> pass through
  ///
  /// Throws [FormatException] for invalid input including null values.
  ///
  /// Example:
  /// ```json
  /// { "type": "theme", "textTheme": "titleMedium" }
  /// ```
  factory PhlutsTextStyle.fromJson(dynamic json) {
    if (json == null) {
      throw FormatException('PhlutsTextStyle.fromJson called on null object');
    }

    if (json is PhlutsTextStyle) return json;

    if (json is String) {
      for (final value in PhlutsMaterialTextStyle.values) {
        if (value.name == json) {
          return PhlutsTextStyle.fromTheme(textTheme: value);
        }
      }

      throw FormatException(
        'Invalid theme style string "$json". '
        'Valid values are: ${PhlutsMaterialTextStyle.values.map((e) => e.name).join(', ')}.',
      );
    }

    if (json is Map<String, dynamic>) {
      try {
        if (json.containsKey('type')) {
          final typeString = json['type'];

          PhlutsTextStyleType parsedType = PhlutsTextStyleType.custom;
          for (final value in PhlutsTextStyleType.values) {
            if (value.name == typeString) {
              parsedType = value;
              break;
            }
          }

          switch (parsedType) {
            case PhlutsTextStyleType.custom:
              return PhlutsCustomTextStyle.fromJson(json);
            case PhlutsTextStyleType.theme:
              return PhlutsThemeTextStyle.fromJson(json);
          }
        } else {
          return PhlutsCustomTextStyle.fromJson(json);
        }
      } catch (e) {
        throw FormatException('Failed to parse style object: $json. Error: $e');
      }
    }

    throw FormatException(
      'Unexpected type ${json.runtimeType} for style value: $json. '
      'Expected theme TextStyle key or custom TextStyle.',
    );
  }

  /// Creates a [PhlutsThemeTextStyle] from a `TextTheme` key.
  ///
  /// Parameter: [textTheme] (required) – the `TextTheme` style key.
  /// Returns: [PhlutsThemeTextStyle]
  factory PhlutsTextStyle.fromTheme({required PhlutsMaterialTextStyle textTheme}) {
    return PhlutsThemeTextStyle(textTheme: textTheme);
  }

  /// Converts this [PhlutsTextStyle] to JSON.
  @override
  Map<String, dynamic> toJson();
}

/// A custom text style similar to Flutter's `TextStyle`.
///
/// Example:
/// ```dart
/// final style = PhlutsCustomTextStyle(fontSize: 16, color: PhlutsColors.blue);
/// ```
///
/// JSON example:
/// ```json
/// {"fontSize": 16, "color": "#FF2196F3" }
/// ```
@JsonSerializable()
class PhlutsCustomTextStyle extends PhlutsTextStyle {
  /// Reference: https://api.flutter.dev/flutter/painting/TextStyle-class.html
  ///
  /// Creates a [PhlutsCustomTextStyle] with the given properties.
  PhlutsCustomTextStyle({
    this.inherit,
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
    this.leadingDistribution,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.decorationThickness,
    this.debugLabel,
    this.fontFamily,
    this.fontFamilyFallback,
    this.package,
    this.overflow,
  }) : super._(type: PhlutsTextStyleType.custom);

  /// Whether to inherit styling from the ambient `DefaultTextStyle`.
  ///
  /// Type: `bool?`
  bool? inherit;

  /// Text color.
  ///
  /// Type: [PhlutsColor]
  PhlutsColor? color;

  /// Background color behind the text.
  ///
  /// Type: [PhlutsColor]
  PhlutsColor? backgroundColor;

  /// Font size in logical pixels.
  ///
  /// Type: `double?`
  double? fontSize;

  /// Font weight.
  ///
  /// Type: [PhlutsFontWeight]
  PhlutsFontWeight? fontWeight;

  /// Font style (normal/italic).
  ///
  /// Type: [PhlutsFontStyle]
  PhlutsFontStyle? fontStyle;

  /// Spacing between letters.
  ///
  /// Type: `double?`
  double? letterSpacing;

  /// Spacing between words.
  ///
  /// Type: `double?`
  double? wordSpacing;

  /// The baseline to align against.
  ///
  /// Type: [PhlutsTextBaseline]
  PhlutsTextBaseline? textBaseline;

  /// The height of this text span, as a multiple of font size.
  ///
  /// Type: `double?`
  double? height;

  /// Strategy for distributing the leading (space above a line).
  ///
  /// Type: [PhlutsTextLeadingDistribution]
  PhlutsTextLeadingDistribution? leadingDistribution;

  /// Drawn line on the text (underline, strikethrough, etc.).
  ///
  /// Type: [PhlutsTextDecorationLine]
  PhlutsTextDecorationLine? decoration;

  /// Color for text decorations (underline, overline, etc.).
  ///
  /// Type: [PhlutsColor]
  PhlutsColor? decorationColor;

  /// Style of text decorations (solid, dotted, dashed, etc.).
  ///
  /// Type: [PhlutsTextDecorationStyle]
  PhlutsTextDecorationStyle? decorationStyle;

  /// Thickness of text decorations in logical pixels.
  ///
  /// Type: `double?`
  double? decorationThickness;

  /// Optional label used for debugging.
  ///
  /// Type: `String?`
  String? debugLabel;

  /// The name of the font family to use.
  ///
  /// Type: `String?`
  String? fontFamily;

  /// Fallback font families to try if [fontFamily] is unavailable.
  ///
  /// Type: `List<String>?`
  List<String>? fontFamilyFallback;

  /// Optional package name for bundled fonts.
  ///
  /// Type: `String?`
  String? package;

  /// How visual overflow should be handled.
  ///
  /// Type: [PhlutsTextOverflow]
  PhlutsTextOverflow? overflow;

  /// Creates a [PhlutsCustomTextStyle] from JSON.
  factory PhlutsCustomTextStyle.fromJson(Map<String, dynamic> json) =>
      _$PhlutsCustomTextStyleFromJson(json);

  /// Converts this custom text style to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsCustomTextStyleToJson(this);

  /// Creates a copy of this style with the given fields replaced.
  PhlutsCustomTextStyle copyWith({
    bool? inherit,
    PhlutsColor? color,
    PhlutsColor? backgroundColor,
    double? fontSize,
    PhlutsFontWeight? fontWeight,
    PhlutsFontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    PhlutsTextBaseline? textBaseline,
    double? height,
    PhlutsTextLeadingDistribution? leadingDistribution,
    PhlutsTextDecorationLine? decoration,
    PhlutsColor? decorationColor,
    PhlutsTextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    PhlutsTextOverflow? overflow,
  }) {
    return PhlutsCustomTextStyle(
      inherit: inherit ?? this.inherit,
      color: color ?? this.color,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      fontStyle: fontStyle ?? this.fontStyle,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      textBaseline: textBaseline ?? this.textBaseline,
      height: height ?? this.height,
      leadingDistribution: leadingDistribution ?? this.leadingDistribution,
      decoration: decoration ?? this.decoration,
      decorationColor: decorationColor ?? this.decorationColor,
      decorationStyle: decorationStyle ?? this.decorationStyle,
      decorationThickness: decorationThickness ?? this.decorationThickness,
      debugLabel: debugLabel ?? this.debugLabel,
      fontFamily: fontFamily ?? this.fontFamily,
      fontFamilyFallback: fontFamilyFallback ?? this.fontFamilyFallback,
      package: package ?? this.package,
      overflow: overflow ?? this.overflow,
    );
  }
}

/// A text style that references a style from `ThemeData.textTheme`.
///
/// For example, `style: PhlutsMaterialTextStyle.bodyMedium` maps to
/// `Theme.of(context).textTheme.bodyMedium`.
///
/// Example:
/// ```dart
/// final style = PhlutsThemeTextStyle(textTheme: PhlutsMaterialTextStyle.bodyMedium);
/// ```
///
/// JSON example:
/// ```json
/// { "type": "theme", "textTheme": "bodyMedium" }
/// ```
@JsonSerializable()
class PhlutsThemeTextStyle extends PhlutsTextStyle {
  /// A text style that references a style from `ThemeData.textTheme`.
  ///
  /// For example, `style: PhlutsMaterialTextStyle.bodyMedium` maps to
  /// `Theme.of(context).textTheme.bodyMedium`.
  PhlutsThemeTextStyle({
    required this.textTheme,
    this.inherit,
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
    this.leadingDistribution,
    this.decorationColor,
    this.decorationStyle,
    this.decorationThickness,
    this.debugLabel,
    this.fontFamily,
    this.fontFamilyFallback,
    this.package,
    this.overflow,
  }) : super._(type: PhlutsTextStyleType.theme);

  /// The `TextTheme` style key.
  ///
  /// Type: [PhlutsMaterialTextStyle]
  final PhlutsMaterialTextStyle textTheme;

  /// Whether to inherit styling from the ambient `DefaultTextStyle`.
  ///
  /// Type: `bool?`
  final bool? inherit;

  /// Text color.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? color;

  /// Background color behind the text.
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? backgroundColor;

  /// Font size in logical pixels.
  ///
  /// Type: `double?`
  final double? fontSize;

  /// Font weight.
  ///
  /// Type: [PhlutsFontWeight]
  final PhlutsFontWeight? fontWeight;

  /// Font style (normal/italic).
  ///
  /// Type: [PhlutsFontStyle]
  final PhlutsFontStyle? fontStyle;

  /// Spacing between letters.
  ///
  /// Type: `double?`
  final double? letterSpacing;

  /// Spacing between words.
  ///
  /// Type: `double?`
  final double? wordSpacing;

  /// The baseline to align against.
  ///
  /// Type: [PhlutsTextBaseline]
  final PhlutsTextBaseline? textBaseline;

  /// The height of this text span, as a multiple of font size.
  ///
  /// Type: `double?`
  final double? height;

  /// Strategy for distributing the leading (space above a line).
  ///
  /// Type: [PhlutsTextLeadingDistribution]
  final PhlutsTextLeadingDistribution? leadingDistribution;

  /// Color for text decorations (underline, overline, etc.).
  ///
  /// Type: [PhlutsColor]
  final PhlutsColor? decorationColor;

  /// Style of text decorations (solid, dotted, dashed, etc.).
  ///
  /// Type: [PhlutsTextDecorationStyle]
  final PhlutsTextDecorationStyle? decorationStyle;

  /// Thickness of text decorations in logical pixels.
  ///
  /// Type: `double?`
  final double? decorationThickness;

  /// Optional label used for debugging.
  ///
  /// Type: `String?`
  final String? debugLabel;

  /// The name of the font family to use.
  ///
  /// Type: `String?`
  final String? fontFamily;

  /// Fallback font families to try if [fontFamily] is unavailable.
  ///
  /// Type: `List<String>?`
  final List<String>? fontFamilyFallback;

  /// Optional package name for bundled fonts.
  ///
  /// Type: `String?`
  final String? package;

  /// How visual overflow should be handled.
  ///
  /// Type: [PhlutsTextOverflow]
  final PhlutsTextOverflow? overflow;

  /// Creates a [PhlutsThemeTextStyle] from JSON.
  factory PhlutsThemeTextStyle.fromJson(Map<String, dynamic> json) =>
      _$PhlutsThemeTextStyleFromJson(json);

  /// Converts this theme text style to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsThemeTextStyleToJson(this);

  /// Creates a copy of this style with the given fields replaced.
  PhlutsThemeTextStyle copyWith({
    bool? inherit,
    PhlutsColor? color,
    PhlutsColor? backgroundColor,
    double? fontSize,
    PhlutsFontWeight? fontWeight,
    PhlutsFontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    PhlutsTextBaseline? textBaseline,
    double? height,
    PhlutsTextLeadingDistribution? leadingDistribution,
    PhlutsColor? decorationColor,
    PhlutsTextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    PhlutsTextOverflow? overflow,
  }) {
    return PhlutsThemeTextStyle(
      textTheme: textTheme,
      inherit: inherit ?? this.inherit,
      color: color ?? this.color,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      fontStyle: fontStyle ?? this.fontStyle,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      textBaseline: textBaseline ?? this.textBaseline,
      height: height ?? this.height,
      leadingDistribution: leadingDistribution ?? this.leadingDistribution,
      decorationColor: decorationColor ?? this.decorationColor,
      decorationStyle: decorationStyle ?? this.decorationStyle,
      decorationThickness: decorationThickness ?? this.decorationThickness,
      debugLabel: debugLabel ?? this.debugLabel,
      fontFamily: fontFamily ?? this.fontFamily,
      fontFamilyFallback: fontFamilyFallback ?? this.fontFamilyFallback,
      package: package ?? this.package,
      overflow: overflow ?? this.overflow,
    );
  }
}
