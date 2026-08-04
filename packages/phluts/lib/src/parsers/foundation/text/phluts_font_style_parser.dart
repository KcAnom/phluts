import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsFontStyleParser on PhlutsFontStyle {
  FontStyle get parse {
    switch (this) {
      case PhlutsFontStyle.normal:
        return FontStyle.normal;
      case PhlutsFontStyle.italic:
        return FontStyle.italic;
    }
  }
}
