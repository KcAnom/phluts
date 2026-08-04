import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/decoration/phluts_box_decoration_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/navigation/phluts_tab_bar_indicator_size_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsTabBarThemeData].
///
/// Converts [PhlutsTabBarThemeData] to Flutter's [TabBarThemeData].
extension PhlutsTabBarThemeDataParser on PhlutsTabBarThemeData {
  TabBarThemeData? parse(BuildContext context) {
    return TabBarThemeData(
      indicator: indicator?.parse(context),
      indicatorColor: indicatorColor?.toColor(context),
      indicatorSize: indicatorSize?.parse,
      dividerColor: dividerColor?.toColor(context),
      labelColor: labelColor?.toColor(context),
      labelPadding: labelPadding?.parse,
      labelStyle: labelStyle?.parse(context),
      unselectedLabelColor: unselectedLabelColor?.toColor(context),
      unselectedLabelStyle: unselectedLabelStyle?.parse(context),
      overlayColor: WidgetStateProperty.all(overlayColor?.toColor(context)),
    );
  }
}
