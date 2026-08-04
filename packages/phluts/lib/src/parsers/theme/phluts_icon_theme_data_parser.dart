import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/effects/phluts_shadow_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsIconThemeData].
///
/// Converts [PhlutsIconThemeData] to Flutter's [IconThemeData].
extension PhlutsIconThemeDataParser on PhlutsIconThemeData {
  IconThemeData? parse(BuildContext context) {
    return IconThemeData(
      size: size,
      fill: fill,
      weight: weight,
      grade: grade,
      opticalSize: opticalSize,
      color: color?.toColor(context),
      opacity: opacity,
      shadows: shadows?.map((shadow) => shadow.parse(context)).toList(),
    );
  }
}
