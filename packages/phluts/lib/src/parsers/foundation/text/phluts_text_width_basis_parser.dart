import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsTextWidthBasisParser on PhlutsTextWidthBasis {
  TextWidthBasis get parse {
    switch (this) {
      case PhlutsTextWidthBasis.parent:
        return TextWidthBasis.parent;
      case PhlutsTextWidthBasis.longestLine:
        return TextWidthBasis.longestLine;
    }
  }
}
