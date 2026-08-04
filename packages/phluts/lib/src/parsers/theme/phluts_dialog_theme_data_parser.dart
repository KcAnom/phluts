import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_alignment_geometry_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_box_constraints_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsDialogThemeData].
///
/// Converts [PhlutsDialogThemeData] to Flutter's [DialogThemeData].
extension PhlutsDialogThemeDataParser on PhlutsDialogThemeData {
  DialogThemeData parse(BuildContext context) {
    return DialogThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shape: shape?.parse(context),
      alignment: alignment?.parse,
      iconColor: iconColor?.toColor(context),
      titleTextStyle: titleTextStyle?.parse(context),
      contentTextStyle: contentTextStyle?.parse(context),
      actionsPadding: actionsPadding?.parse,
      barrierColor: barrierColor?.toColor(context),
      insetPadding: insetPadding?.parse,
      clipBehavior: clipBehavior?.parse,
      constraints: constraints?.parse,
    );
  }
}
