import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsTabAlignmentParser on PhlutsTabAlignment {
  TabAlignment get parse {
    switch (this) {
      case PhlutsTabAlignment.center:
        return TabAlignment.center;
      case PhlutsTabAlignment.fill:
        return TabAlignment.fill;
      case PhlutsTabAlignment.startOffset:
        return TabAlignment.startOffset;
      case PhlutsTabAlignment.start:
        return TabAlignment.start;
    }
  }
}
