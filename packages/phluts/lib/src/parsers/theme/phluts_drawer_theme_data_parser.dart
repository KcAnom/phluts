import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsDrawerThemeData].
///
/// Converts [PhlutsDrawerThemeData] to Flutter's [DrawerThemeData].
extension PhlutsDrawerThemeDataParser on PhlutsDrawerThemeData {
  DrawerThemeData parse(BuildContext context) {
    return DrawerThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      scrimColor: scrimColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shape: shape?.parse(context),
      endShape: endShape?.parse(context),
      width: width,
      clipBehavior: clipBehavior?.parse,
    );
  }
}
