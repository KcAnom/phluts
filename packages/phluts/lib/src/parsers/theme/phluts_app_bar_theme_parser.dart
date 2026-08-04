import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_system_ui_overlay_style_parser.dart';
import 'package:phluts/src/parsers/theme/phluts_icon_theme_data_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsAppBarTheme].
///
/// Converts [PhlutsAppBarTheme] to Flutter's [AppBarTheme].
extension PhlutsAppBarThemeParser on PhlutsAppBarTheme {
  AppBarTheme parse(BuildContext context) {
    return AppBarTheme(
      backgroundColor: backgroundColor?.toColor(context),
      foregroundColor: foregroundColor?.toColor(context),
      elevation: elevation,
      scrolledUnderElevation: scrolledUnderElevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shape: shape?.parse(context),
      iconTheme: iconTheme?.parse(context),
      actionsIconTheme: actionsIconTheme?.parse(context),
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      leadingWidth: leadingWidth,
      toolbarHeight: toolbarHeight,
      toolbarTextStyle: toolbarTextStyle?.parse(context),
      titleTextStyle: titleTextStyle?.parse(context),
      systemOverlayStyle: systemOverlayStyle?.parse(context),
      actionsPadding: actionsPadding?.parse,
    );
  }
}
