import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

import 'phluts_border_side_parser.dart';

extension PhlutsCircleBorderParser on PhlutsCircleBorder {
  CircleBorder parse(BuildContext context) {
    return CircleBorder(
      side: side?.parse(context) ?? BorderSide.none,
      eccentricity: eccentricity ?? 0.0,
    );
  }
}
