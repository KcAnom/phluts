import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsCrossAxisAlignmentParser on PhlutsCrossAxisAlignment {
  CrossAxisAlignment get parse {
    switch (this) {
      case PhlutsCrossAxisAlignment.start:
        return CrossAxisAlignment.start;
      case PhlutsCrossAxisAlignment.end:
        return CrossAxisAlignment.end;
      case PhlutsCrossAxisAlignment.center:
        return CrossAxisAlignment.center;
      case PhlutsCrossAxisAlignment.stretch:
        return CrossAxisAlignment.stretch;
      case PhlutsCrossAxisAlignment.baseline:
        return CrossAxisAlignment.baseline;
    }
  }
}
