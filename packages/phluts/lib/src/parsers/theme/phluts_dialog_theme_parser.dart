import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_alignment_geometry_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsDialogTheme].
///
/// Converts [PhlutsDialogTheme] to Flutter's [DialogTheme].
extension PhlutsDialogThemeParser on PhlutsDialogTheme {
  DialogTheme? parse(BuildContext context) {
    return DialogTheme(
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shape: shape?.parse(context),
      alignment: alignment?.parse,
      titleTextStyle: titleTextStyle?.parse(context),
      contentTextStyle: contentTextStyle?.parse(context),
      actionsPadding: actionsPadding?.parse,
      iconColor: iconColor?.toColor(context),
    );
  }
}
