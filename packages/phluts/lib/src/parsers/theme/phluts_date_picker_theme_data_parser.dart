import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_border_side_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/parsers/foundation/theme/phluts_input_decoration_theme_parser.dart';
import 'package:phluts/src/parsers/theme/phluts_button_style_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsDatePickerThemeData].
///
/// Converts [PhlutsDatePickerThemeData] to Flutter's [DatePickerThemeData].
extension PhlutsDatePickerThemeDataParser on PhlutsDatePickerThemeData {
  DatePickerThemeData parse(BuildContext context) {
    return DatePickerThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shape: shape?.parse(context),
      headerBackgroundColor: headerBackgroundColor?.toColor(context),
      headerForegroundColor: headerForegroundColor?.toColor(context),
      headerHeadlineStyle: headerHeadlineStyle?.parse(context),
      headerHelpStyle: headerHelpStyle?.parse(context),
      weekdayStyle: weekdayStyle?.parse(context),
      dayStyle: dayStyle?.parse(context),
      dayForegroundColor: WidgetStatePropertyAll(
        dayForegroundColor?.toColor(context),
      ),
      dayBackgroundColor: WidgetStatePropertyAll(
        dayBackgroundColor?.toColor(context),
      ),
      dayOverlayColor: WidgetStatePropertyAll(
        dayOverlayColor?.toColor(context),
      ),
      dayShape: WidgetStatePropertyAll(
        dayShape?.parse(context) as OutlinedBorder,
      ),
      todayForegroundColor: WidgetStatePropertyAll(
        todayForegroundColor?.toColor(context),
      ),
      todayBackgroundColor: WidgetStatePropertyAll(
        todayBackgroundColor?.toColor(context),
      ),
      todayBorder: todayBorder?.parse(context),
      yearStyle: yearStyle?.parse(context),
      yearForegroundColor: WidgetStatePropertyAll(
        yearForegroundColor?.toColor(context),
      ),
      yearBackgroundColor: WidgetStatePropertyAll(
        yearBackgroundColor?.toColor(context),
      ),
      yearOverlayColor: WidgetStatePropertyAll(
        yearOverlayColor?.toColor(context),
      ),
      rangePickerBackgroundColor: rangePickerBackgroundColor?.toColor(context),
      rangePickerElevation: rangePickerElevation,
      rangePickerShadowColor: rangePickerShadowColor?.toColor(context),
      rangePickerSurfaceTintColor: rangePickerSurfaceTintColor?.toColor(
        context,
      ),
      rangePickerShape: rangePickerShape?.parse(context),
      rangePickerHeaderBackgroundColor: rangePickerHeaderBackgroundColor
          ?.toColor(context),
      rangePickerHeaderForegroundColor: rangePickerHeaderForegroundColor
          ?.toColor(context),
      rangePickerHeaderHeadlineStyle: rangePickerHeaderHeadlineStyle?.parse(
        context,
      ),
      rangePickerHeaderHelpStyle: rangePickerHeaderHelpStyle?.parse(context),
      rangeSelectionBackgroundColor: rangeSelectionBackgroundColor?.toColor(
        context,
      ),
      rangeSelectionOverlayColor: WidgetStatePropertyAll(
        rangeSelectionOverlayColor?.toColor(context),
      ),
      dividerColor: dividerColor?.toColor(context),
      inputDecorationTheme: inputDecorationTheme?.parse(context),
      cancelButtonStyle: cancelButtonStyle?.parseTextButton(context),
      confirmButtonStyle: confirmButtonStyle?.parseTextButton(context),
    );
  }
}
