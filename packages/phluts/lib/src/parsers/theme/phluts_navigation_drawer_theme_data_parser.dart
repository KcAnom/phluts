import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_size_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/parsers/theme/themes.dart';
import 'package:phluts/src/utils/utils.dart';

/// Parser extension for [PhlutsNavigationDrawerThemeData].
///
/// Converts [PhlutsNavigationDrawerThemeData] to Flutter's [NavigationDrawerThemeData].
extension PhlutsNavigationDrawerThemeDataParser on PhlutsNavigationDrawerThemeData {
  NavigationDrawerThemeData parse(BuildContext context) {
    return NavigationDrawerThemeData(
      tileHeight: tileHeight,
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      indicatorColor: indicatorColor?.toColor(context),
      indicatorShape: indicatorShape?.parse(context),
      indicatorSize: indicatorSize?.parse,
      labelTextStyle: WidgetStatePropertyAll(labelTextStyle?.parse(context)),
      iconTheme: WidgetStatePropertyAll(iconTheme?.parse(context)),
    );
  }
}
