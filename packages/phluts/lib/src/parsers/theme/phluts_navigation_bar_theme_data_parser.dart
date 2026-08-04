import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/foundation.dart';
import 'package:phluts/src/parsers/theme/phluts_icon_theme_data_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsNavigationBarThemeData].
///
/// Converts [PhlutsNavigationBarThemeData] to Flutter's [NavigationBarThemeData].
extension PhlutsNavigationBarThemeDataParser on PhlutsNavigationBarThemeData {
  NavigationBarThemeData? parse(BuildContext context) {
    return NavigationBarThemeData(
      height: height,
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      indicatorColor: indicatorColor?.toColor(context),
      indicatorShape: indicatorShape?.parse(context),
      labelTextStyle: WidgetStateProperty.all(labelTextStyle?.parse(context)),
      iconTheme: WidgetStateProperty.all(iconTheme?.parse(context)),
      labelBehavior: labelBehavior?.parse,
    );
  }
}
