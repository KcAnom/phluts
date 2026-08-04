import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsWrapCrossAlignmentParser on PhlutsWrapCrossAlignment {
  WrapCrossAlignment get parse {
    switch (this) {
      case PhlutsWrapCrossAlignment.start:
        return WrapCrossAlignment.start;
      case PhlutsWrapCrossAlignment.end:
        return WrapCrossAlignment.end;
      case PhlutsWrapCrossAlignment.center:
        return WrapCrossAlignment.center;
    }
  }
}
