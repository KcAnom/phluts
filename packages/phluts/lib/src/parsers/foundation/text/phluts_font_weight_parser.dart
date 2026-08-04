import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsFontWeightParser on PhlutsFontWeight {
  FontWeight get parse {
    switch (this) {
      case PhlutsFontWeight.w100:
        return FontWeight.w100;
      case PhlutsFontWeight.w200:
        return FontWeight.w200;
      case PhlutsFontWeight.w300:
        return FontWeight.w300;
      case PhlutsFontWeight.w400:
        return FontWeight.w400;
      case PhlutsFontWeight.w500:
        return FontWeight.w500;
      case PhlutsFontWeight.w600:
        return FontWeight.w600;
      case PhlutsFontWeight.w700:
        return FontWeight.w700;
      case PhlutsFontWeight.w800:
        return FontWeight.w800;
      case PhlutsFontWeight.w900:
        return FontWeight.w900;
      case PhlutsFontWeight.normal:
        return FontWeight.normal;
      case PhlutsFontWeight.bold:
        return FontWeight.bold;
    }
  }
}
