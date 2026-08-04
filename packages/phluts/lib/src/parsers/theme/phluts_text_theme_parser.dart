import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsTextTheme].
///
/// Converts [PhlutsTextTheme] to Flutter's [TextTheme].
extension PhlutsTextThemeParser on PhlutsTextTheme {
  TextTheme? parse(BuildContext context) {
    return TextTheme(
      displayLarge: displayLarge?.parse(context),
      displayMedium: displayMedium?.parse(context),
      displaySmall: displaySmall?.parse(context),
      headlineLarge: headlineLarge?.parse(context),
      headlineMedium: headlineMedium?.parse(context),
      headlineSmall: headlineSmall?.parse(context),
      titleLarge: titleLarge?.parse(context),
      titleMedium: titleMedium?.parse(context),
      titleSmall: titleSmall?.parse(context),
      bodyLarge: bodyLarge?.parse(context),
      bodyMedium: bodyMedium?.parse(context),
      bodySmall: bodySmall?.parse(context),
      labelLarge: labelLarge?.parse(context),
      labelMedium: labelMedium?.parse(context),
      labelSmall: labelSmall?.parse(context),
    );
  }
}
