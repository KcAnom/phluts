import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsMaterialBannerThemeData].
///
/// Converts [PhlutsMaterialBannerThemeData] to Flutter's [MaterialBannerThemeData].
extension PhlutsMaterialBannerThemeDataParser on PhlutsMaterialBannerThemeData {
  MaterialBannerThemeData parse(BuildContext context) {
    return MaterialBannerThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      dividerColor: dividerColor?.toColor(context),
      contentTextStyle: contentTextStyle?.parse(context),
      elevation: elevation,
      padding: padding?.parse,
      leadingPadding: leadingPadding?.parse,
    );
  }
}
