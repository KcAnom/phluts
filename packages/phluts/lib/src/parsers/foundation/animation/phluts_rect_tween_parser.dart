import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

import '../geometry/phluts_rect_parser.dart';

extension PhlutsRectTweenParser on PhlutsRectTween {
  RectTween parse(BuildContext context) {
    final begin = this.begin?.parse;
    final end = this.end?.parse;

    switch (type) {
      case 'materialRectArcTween':
        return MaterialRectArcTween(begin: begin, end: end);
      case 'materialRectCenterArcTween':
        return MaterialRectCenterArcTween(begin: begin, end: end);
      default:
        return RectTween(begin: begin, end: end);
    }
  }
}
