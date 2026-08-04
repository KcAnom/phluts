import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

import 'phluts_circle_border_parser.dart';
import 'phluts_rounded_rectangle_border_parser.dart';

extension PhlutsShapeBorderParser on PhlutsShapeBorder {
  OutlinedBorder parse(BuildContext context) {
    switch (this) {
      case PhlutsRoundedRectangleBorder():
        return (this as PhlutsRoundedRectangleBorder).parse(context);
      case PhlutsCircleBorder():
        return (this as PhlutsCircleBorder).parse(context);
      default:
        return RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.zero,
        );
    }
  }
}
