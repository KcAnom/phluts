import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsBrightnessParser on PhlutsBrightness {
  Brightness get parse {
    switch (this) {
      case PhlutsBrightness.light:
        return Brightness.light;
      case PhlutsBrightness.dark:
        return Brightness.dark;
      case PhlutsBrightness.system:
        return Brightness.light;
    }
  }
}
