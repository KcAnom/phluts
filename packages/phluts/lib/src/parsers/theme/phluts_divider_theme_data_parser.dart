import 'package:flutter/material.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsDividerThemeData].
///
/// Converts [PhlutsDividerThemeData] to Flutter's [DividerThemeData].
extension PhlutsDividerThemeDataParser on PhlutsDividerThemeData {
  DividerThemeData parse(BuildContext context) {
    return DividerThemeData(
      color: color?.toColor(context),
      space: space,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
