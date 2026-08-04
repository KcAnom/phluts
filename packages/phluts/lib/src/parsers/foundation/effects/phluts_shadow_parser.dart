import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_offset_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsShadowParser on PhlutsShadow {
  Shadow parse(BuildContext context) {
    return Shadow(
      color: color.toColor(context) ?? Colors.transparent,
      offset: (offset)?.parse ?? Offset.zero,
      blurRadius: (blurRadius) ?? 0.0,
    );
  }
}
