import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsBottomAppBarThemeData].
///
/// Converts [PhlutsBottomAppBarThemeData] to Flutter's [BottomAppBarThemeData].
extension PhlutsBottomAppBarThemeParser on PhlutsBottomAppBarThemeData {
  BottomAppBarThemeData parse(BuildContext context) {
    return BottomAppBarThemeData(
      color: color?.toColor(context),
      elevation: elevation,
      height: height,
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      padding: padding?.parse,
    );
  }
}
