import 'package:flutter/material.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

import 'phluts_border_side_parser.dart';
import 'phluts_border_style_parser.dart';

extension PhlutsBorderParser on PhlutsBorder {
  Border parse(BuildContext context) {
    final hasIndividualSides =
        top != null || right != null || bottom != null || left != null;

    if (hasIndividualSides) {
      return Border(
        top: top?.parse(context) ?? BorderSide.none,
        right: right?.parse(context) ?? BorderSide.none,
        bottom: bottom?.parse(context) ?? BorderSide.none,
        left: left?.parse(context) ?? BorderSide.none,
      );
    } else {
      return Border.all(
        color: color.toColor(context) ?? const Color(0xFF000000),
        width: width ?? 1.0,
        style: borderStyle?.parse ?? BorderStyle.solid,
        strokeAlign: strokeAlign ?? BorderSide.strokeAlignInside,
      );
    }
  }
}
