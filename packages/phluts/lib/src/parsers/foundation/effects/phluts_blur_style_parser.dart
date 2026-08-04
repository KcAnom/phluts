import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsBlurStyleParser on PhlutsBlurStyle {
  BlurStyle get parse {
    switch (this) {
      case PhlutsBlurStyle.normal:
        return BlurStyle.normal;
      case PhlutsBlurStyle.solid:
        return BlurStyle.solid;
      case PhlutsBlurStyle.outer:
        return BlurStyle.outer;
      case PhlutsBlurStyle.inner:
        return BlurStyle.inner;
    }
  }
}
