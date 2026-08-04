import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_dismiss_direction_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_snack_bar_behavior_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsSnackBarThemeData].
///
/// Converts [PhlutsSnackBarThemeData] to Flutter's [SnackBarThemeData].
extension PhlutsSnackBarThemeDataParser on PhlutsSnackBarThemeData {
  SnackBarThemeData? parse(BuildContext context) {
    return SnackBarThemeData(
      behavior: behavior?.parse,
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shape: shape?.parse(context),
      width: width,
      contentTextStyle: contentTextStyle?.parse(context),
      actionTextColor: actionTextColor?.toColor(context),
      disabledActionTextColor: disabledActionTextColor?.toColor(context),
      insetPadding: insetPadding?.parse,
      dismissDirection: dismissDirection?.parse,
      showCloseIcon: showCloseIcon,
      closeIconColor: closeIconColor?.toColor(context),
      actionOverflowThreshold: actionOverflowThreshold,
      actionBackgroundColor: actionBackgroundColor?.toColor(context),
      disabledActionBackgroundColor: disabledActionBackgroundColor?.toColor(
        context,
      ),
    );
  }
}
