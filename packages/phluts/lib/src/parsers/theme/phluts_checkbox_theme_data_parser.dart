import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_border_side_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_visual_density_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_mouse_cursor_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_material_tap_target_size_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsCheckboxThemeData].
///
/// Converts [PhlutsCheckboxThemeData] to Flutter's [CheckboxThemeData].
extension PhlutsCheckboxThemeDataParser on PhlutsCheckboxThemeData {
  CheckboxThemeData parse(BuildContext context) {
    return CheckboxThemeData(
      mouseCursor: WidgetStateProperty.all(mouseCursor?.parse),
      fillColor: fillColor != null
          ? WidgetStateProperty.all(fillColor!.toColor(context))
          : null,
      checkColor: checkColor != null
          ? WidgetStateProperty.all(checkColor!.toColor(context))
          : null,
      overlayColor: overlayColor != null
          ? WidgetStateProperty.all(overlayColor!.toColor(context))
          : null,
      splashRadius: splashRadius,
      materialTapTargetSize: materialTapTargetSize?.parse,
      visualDensity: visualDensity?.parse,
      shape: shape?.parse(context),
      side: side?.parse(context),
    );
  }
}
