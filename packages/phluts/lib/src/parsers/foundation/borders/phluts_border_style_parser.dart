import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsBorderStyleParser on PhlutsBorderStyle {
  BorderStyle get parse {
    switch (this) {
      case PhlutsBorderStyle.none:
        return BorderStyle.none;
      case PhlutsBorderStyle.solid:
        return BorderStyle.solid;
    }
  }
}
