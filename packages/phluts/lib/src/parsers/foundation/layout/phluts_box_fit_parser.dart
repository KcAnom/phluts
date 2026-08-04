import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsBoxFitParser on PhlutsBoxFit {
  BoxFit get parse {
    switch (this) {
      case PhlutsBoxFit.fill:
        return BoxFit.fill;
      case PhlutsBoxFit.contain:
        return BoxFit.contain;
      case PhlutsBoxFit.cover:
        return BoxFit.cover;
      case PhlutsBoxFit.fitWidth:
        return BoxFit.fitWidth;
      case PhlutsBoxFit.fitHeight:
        return BoxFit.fitHeight;
      case PhlutsBoxFit.scaleDown:
        return BoxFit.scaleDown;
      case PhlutsBoxFit.none:
        return BoxFit.none;
    }
  }
}
