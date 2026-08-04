import 'package:flutter/material.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

import '../borders/phluts_border_radius_parser.dart';
import '../borders/phluts_border_style_parser.dart';

/// Parses a [PhlutsTableBorder] to a Flutter [TableBorder].
extension PhlutsTableBorderParser on PhlutsTableBorder {
  TableBorder parse(BuildContext context) {
    return TableBorder.all(
      color: color?.toColor(context) ?? Colors.black,
      width: width ?? 1.0,
      style: style?.parse ?? BorderStyle.solid,
      borderRadius: borderRadius?.parse ?? BorderRadius.zero,
    );
  }
}
