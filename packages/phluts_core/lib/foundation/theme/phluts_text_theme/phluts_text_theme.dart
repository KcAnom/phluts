import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';

part 'phluts_text_theme.g.dart';

/// A Phluts model representing Flutter's [TextTheme].
///
/// Defines the text theme for the application, including display, headline,
/// title, body, and label text styles.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsTextTheme(
///   displayLarge: PhlutsTextStyle(fontSize: 57.0, fontWeight: 'normal'),
///   headlineLarge: PhlutsTextStyle(fontSize: 32.0, fontWeight: 'normal'),
///   bodyLarge: PhlutsTextStyle(fontSize: 16.0, fontWeight: 'normal'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "displayLarge": {"fontSize": 57.0, "fontWeight": "normal"},
///   "headlineLarge": {"fontSize": 32.0, "fontWeight": "normal"},
///   "titleLarge": {"fontSize": 22.0, "fontWeight": "medium"},
///   "bodyLarge": {"fontSize": 16.0, "fontWeight": "normal"},
///   "labelLarge": {"fontSize": 14.0, "fontWeight": "medium"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsTextTheme implements PhlutsElement {
  /// Creates a [PhlutsTextTheme] with the given properties.
  const PhlutsTextTheme({
    this.displayLarge,
    this.displayMedium,
    this.displaySmall,
    this.headlineLarge,
    this.headlineMedium,
    this.headlineSmall,
    this.titleLarge,
    this.titleMedium,
    this.titleSmall,
    this.bodyLarge,
    this.bodyMedium,
    this.bodySmall,
    this.labelLarge,
    this.labelMedium,
    this.labelSmall,
  });

  /// The style for display large text.
  final PhlutsTextStyle? displayLarge;

  /// The style for display medium text.
  final PhlutsTextStyle? displayMedium;

  /// The style for display small text.
  final PhlutsTextStyle? displaySmall;

  /// The style for headline large text.
  final PhlutsTextStyle? headlineLarge;

  /// The style for headline medium text.
  final PhlutsTextStyle? headlineMedium;

  /// The style for headline small text.
  final PhlutsTextStyle? headlineSmall;

  /// The style for title large text.
  final PhlutsTextStyle? titleLarge;

  /// The style for title medium text.
  final PhlutsTextStyle? titleMedium;

  /// The style for title small text.
  final PhlutsTextStyle? titleSmall;

  /// The style for body large text.
  final PhlutsTextStyle? bodyLarge;

  /// The style for body medium text.
  final PhlutsTextStyle? bodyMedium;

  /// The style for body small text.
  final PhlutsTextStyle? bodySmall;

  /// The style for label large text.
  final PhlutsTextStyle? labelLarge;

  /// The style for label medium text.
  final PhlutsTextStyle? labelMedium;

  /// The style for label small text.
  final PhlutsTextStyle? labelSmall;

  /// Creates a [PhlutsTextTheme] from JSON.
  factory PhlutsTextTheme.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTextThemeFromJson(json);

  /// Converts this text theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsTextThemeToJson(this);
}
