import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_font_style_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_font_weight_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_baseline_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_decoration_line_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_decoration_style_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_leading_distribution_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_overflow_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsTextStyleParser on PhlutsTextStyle {
  TextStyle? parse(BuildContext context) {
    switch (type) {
      case PhlutsTextStyleType.theme:
        final themeStyle = (this as PhlutsThemeTextStyle).textTheme;
        final textTheme = Theme.of(context).textTheme;
        TextStyle? textStyle;
        switch (themeStyle) {
          case PhlutsMaterialTextStyle.displayLarge:
            textStyle = textTheme.displayLarge;
            break;
          case PhlutsMaterialTextStyle.displayMedium:
            textStyle = textTheme.displayMedium;
            break;
          case PhlutsMaterialTextStyle.displaySmall:
            textStyle = textTheme.displaySmall;
            break;
          case PhlutsMaterialTextStyle.headlineLarge:
            textStyle = textTheme.headlineLarge;
            break;
          case PhlutsMaterialTextStyle.headlineMedium:
            textStyle = textTheme.headlineMedium;
            break;
          case PhlutsMaterialTextStyle.headlineSmall:
            textStyle = textTheme.headlineSmall;
            break;
          case PhlutsMaterialTextStyle.titleLarge:
            textStyle = textTheme.titleLarge;
            break;
          case PhlutsMaterialTextStyle.titleMedium:
            textStyle = textTheme.titleMedium;
            break;
          case PhlutsMaterialTextStyle.titleSmall:
            textStyle = textTheme.titleSmall;
            break;
          case PhlutsMaterialTextStyle.bodyLarge:
            textStyle = textTheme.bodyLarge;
            break;
          case PhlutsMaterialTextStyle.bodyMedium:
            textStyle = textTheme.bodyMedium;
            break;
          case PhlutsMaterialTextStyle.bodySmall:
            textStyle = textTheme.bodySmall;
            break;
          case PhlutsMaterialTextStyle.labelLarge:
            textStyle = textTheme.labelLarge;
            break;
          case PhlutsMaterialTextStyle.labelMedium:
            textStyle = textTheme.labelMedium;
            break;
          case PhlutsMaterialTextStyle.labelSmall:
            textStyle = textTheme.labelSmall;
            break;
        }

        final themeRef = this as PhlutsThemeTextStyle;
        return textStyle?.copyWith(
          inherit: themeRef.inherit,
          color: themeRef.color?.toColor(context),
          backgroundColor: themeRef.backgroundColor?.toColor(context),
          fontSize: themeRef.fontSize,
          fontWeight: themeRef.fontWeight?.parse,
          fontStyle: themeRef.fontStyle?.parse,
          letterSpacing: themeRef.letterSpacing,
          wordSpacing: themeRef.wordSpacing,
          textBaseline: themeRef.textBaseline?.parse,
          height: themeRef.height,
          leadingDistribution: themeRef.leadingDistribution?.parse,
          decorationColor: themeRef.decorationColor?.toColor(context),
          decorationStyle: themeRef.decorationStyle?.parse,
          decorationThickness: themeRef.decorationThickness,
          debugLabel: themeRef.debugLabel,
          fontFamily: themeRef.fontFamily,
          fontFamilyFallback: themeRef.fontFamilyFallback,
          package: themeRef.package,
          overflow: themeRef.overflow?.parse,
        );
      case PhlutsTextStyleType.custom:
        final style = this as PhlutsCustomTextStyle;
        return TextStyle(
          inherit: style.inherit ?? true,
          color: style.color?.toColor(context),
          backgroundColor: style.backgroundColor?.toColor(context),
          fontSize: style.fontSize,
          fontWeight: style.fontWeight?.parse,
          fontStyle: style.fontStyle?.parse,
          letterSpacing: style.letterSpacing,
          wordSpacing: style.wordSpacing,
          textBaseline: style.textBaseline?.parse,
          height: style.height,
          leadingDistribution: style.leadingDistribution?.parse,
          decoration: style.decoration?.parse,
          decorationColor: style.decorationColor?.toColor(context),
          decorationStyle: style.decorationStyle?.parse,
          decorationThickness: style.decorationThickness,
          debugLabel: style.debugLabel,
          fontFamily: style.fontFamily,
          fontFamilyFallback: style.fontFamilyFallback,
          package: style.package,
          overflow: style.overflow?.parse,
        );
    }
  }
}
