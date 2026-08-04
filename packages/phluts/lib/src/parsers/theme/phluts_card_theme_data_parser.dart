import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsCardThemeData].
///
/// Converts [PhlutsCardThemeData] to Flutter's [CardThemeData].
extension PhlutsCardThemeDataParser on PhlutsCardThemeData {
  CardThemeData parse(BuildContext context) {
    return CardThemeData(
      clipBehavior: clipBehavior?.parse,
      color: color?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      elevation: elevation,
      margin: margin?.parse,
      shape: shape?.parse(context),
    );
  }
}
