import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsOverflowBarAlignmentParser on PhlutsOverflowBarAlignment {
  OverflowBarAlignment get parse {
    switch (this) {
      case PhlutsOverflowBarAlignment.start:
        return OverflowBarAlignment.start;
      case PhlutsOverflowBarAlignment.end:
        return OverflowBarAlignment.end;
      case PhlutsOverflowBarAlignment.center:
        return OverflowBarAlignment.center;
    }
  }
}
