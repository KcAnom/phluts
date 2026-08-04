import 'package:flutter/material.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

import '../effects/phluts_blur_style_parser.dart';
import 'phluts_offset_parser.dart';

extension PhlutsBoxShadowParser on PhlutsBoxShadow {
  BoxShadow parse(BuildContext context) {
    return BoxShadow(
      color: color.toColor(context) ?? const Color(0xFF000000),
      blurRadius: blurRadius ?? 0.0,
      offset: offset?.parse ?? Offset.zero,
      spreadRadius: spreadRadius ?? 0.0,
      blurStyle: blurStyle?.parse ?? BlurStyle.normal,
    );
  }
}
