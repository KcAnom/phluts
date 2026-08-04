import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/navigation/phluts_bottom_navigation_bar_landscape_layout_parser.dart';
import 'package:phluts/src/parsers/foundation/navigation/phluts_bottom_navigation_bar_type_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/parsers/theme/phluts_icon_theme_data_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsBottomNavBarThemeData].
///
/// Converts [PhlutsBottomNavBarThemeData] to Flutter's [BottomNavigationBarThemeData].
extension PhlutsBottomNavBarThemeDataParser on PhlutsBottomNavBarThemeData {
  BottomNavigationBarThemeData parse(BuildContext context) {
    return BottomNavigationBarThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      selectedIconTheme: selectedIconTheme?.parse(context),
      unselectedIconTheme: unselectedIconTheme?.parse(context),
      selectedItemColor: selectedItemColor?.toColor(context),
      unselectedItemColor: unselectedItemColor?.toColor(context),
      selectedLabelStyle: selectedLabelStyle?.parse(context),
      unselectedLabelStyle: unselectedLabelStyle?.parse(context),
      showSelectedLabels: showSelectedLabels,
      showUnselectedLabels: showUnselectedLabels,
      type: type?.parse,
      enableFeedback: enableFeedback,
      landscapeLayout: landscapeLayout?.parse,
    );
  }
}
