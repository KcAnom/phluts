import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

import 'phluts_border_radius_parser.dart';
import 'phluts_border_side_parser.dart';

extension PhlutsRoundedRectangleBorderParser on PhlutsRoundedRectangleBorder {
  RoundedRectangleBorder parse(BuildContext context) {
    return RoundedRectangleBorder(
      side: side?.parse(context) ?? BorderSide.none,
      borderRadius: borderRadius?.parse ?? BorderRadius.zero,
    );
  }
}
