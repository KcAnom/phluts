import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsTextDecorationStyleParser on PhlutsTextDecorationStyle {
  TextDecorationStyle get parse {
    switch (this) {
      case PhlutsTextDecorationStyle.solid:
        return TextDecorationStyle.solid;
      case PhlutsTextDecorationStyle.double:
        return TextDecorationStyle.double;
      case PhlutsTextDecorationStyle.dotted:
        return TextDecorationStyle.dotted;
      case PhlutsTextDecorationStyle.dashed:
        return TextDecorationStyle.dashed;
      case PhlutsTextDecorationStyle.wavy:
        return TextDecorationStyle.wavy;
    }
  }
}
