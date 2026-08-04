import 'package:flutter/material.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

import 'phluts_border_style_parser.dart';

extension PhlutsBorderSideParser on PhlutsBorderSide {
  BorderSide parse(BuildContext context) {
    return BorderSide(
      color: color?.toColor(context) ?? const Color(0xFF000000),
      width: width ?? 1.0,
      style: borderStyle?.parse ?? BorderStyle.solid,
      strokeAlign: strokeAlign ?? BorderSide.strokeAlignInside,
    );
  }
}
