import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phluts/src/parsers/foundation/colors/phluts_brightness_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsSystemUIOverlayStyleParser on PhlutsSystemUIOverlayStyle {
  SystemUiOverlayStyle parse(BuildContext context) {
    return SystemUiOverlayStyle(
      systemNavigationBarColor: systemNavigationBarColor?.toColor(context),
      systemNavigationBarDividerColor: systemNavigationBarDividerColor.toColor(
        context,
      ),
      systemNavigationBarIconBrightness:
          systemNavigationBarIconBrightness?.parse,
      systemNavigationBarContrastEnforced: systemNavigationBarContrastEnforced,
      statusBarColor: statusBarColor.toColor(context),
      statusBarBrightness: statusBarBrightness?.parse,
      statusBarIconBrightness: statusBarIconBrightness?.parse,
      systemStatusBarContrastEnforced: systemStatusBarContrastEnforced,
    );
  }
}
