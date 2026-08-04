import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_border_side_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/colors/phluts_brightness_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_box_constraints_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/parsers/theme/phluts_icon_theme_data_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsChipThemeData].
///
/// Converts [PhlutsChipThemeData] to Flutter's [ChipThemeData].
extension PhlutsChipThemeDataParser on PhlutsChipThemeData {
  ChipThemeData parse(BuildContext context) {
    return ChipThemeData(
      color: WidgetStatePropertyAll(color?.toColor(context)),
      backgroundColor: backgroundColor?.toColor(context),
      deleteIconColor: deleteIconColor?.toColor(context),
      disabledColor: disabledColor?.toColor(context),
      selectedColor: selectedColor?.toColor(context),
      secondarySelectedColor: secondarySelectedColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      selectedShadowColor: selectedShadowColor?.toColor(context),
      showCheckmark: showCheckmark,
      checkmarkColor: checkmarkColor?.toColor(context),
      labelPadding: labelPadding?.parse,
      padding: padding?.parse,
      side: side?.parse(context),
      shape: shape?.parse(context),
      labelStyle: labelStyle?.parse(context),
      secondaryLabelStyle: secondaryLabelStyle?.parse(context),
      brightness: brightness?.parse,
      elevation: elevation,
      pressElevation: pressElevation,
      iconTheme: iconTheme?.parse(context),
      avatarBoxConstraints: avatarBoxConstraints?.parse,
      deleteIconBoxConstraints: deleteIconBoxConstraints?.parse,
    );
  }
}
