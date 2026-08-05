import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_box_constraints_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsFloatingActionButtonThemeData].
///
/// Converts [PhlutsFloatingActionButtonThemeData] to Flutter's [FloatingActionButtonThemeData].
extension PhlutsFloatingActionThemeParser
    on PhlutsFloatingActionButtonThemeData {
  FloatingActionButtonThemeData parse(BuildContext context) {
    return FloatingActionButtonThemeData(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor?.toColor(context),
      focusColor: focusColor?.toColor(context),
      hoverColor: hoverColor?.toColor(context),
      splashColor: splashColor?.toColor(context),
      elevation: elevation,
      focusElevation: focusElevation,
      hoverElevation: hoverElevation,
      disabledElevation: disabledElevation,
      highlightElevation: highlightElevation,
      shape: shape?.parse(context),
      enableFeedback: enableFeedback,
      iconSize: iconSize,
      sizeConstraints: sizeConstraints?.parse,
      extendedIconLabelSpacing: extendedIconLabelSpacing,
      extendedPadding: extendedPadding?.parse,
      extendedTextStyle: extendedTextStyle?.parse(context),
    );
  }
}
