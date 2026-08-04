import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsTextAlignParser on PhlutsTextAlign {
  TextAlign get parse {
    switch (this) {
      case PhlutsTextAlign.left:
        return TextAlign.left;
      case PhlutsTextAlign.right:
        return TextAlign.right;
      case PhlutsTextAlign.center:
        return TextAlign.center;
      case PhlutsTextAlign.justify:
        return TextAlign.justify;
      case PhlutsTextAlign.start:
        return TextAlign.start;
      case PhlutsTextAlign.end:
        return TextAlign.end;
    }
  }
}
