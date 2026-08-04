import 'package:flutter/painting.dart';
import 'package:phluts_core/foundation/text/phluts_text_types.dart';

extension PhlutsTextDecorationLineParser on PhlutsTextDecorationLine {
  TextDecoration get parse {
    switch (this) {
      case PhlutsTextDecorationLine.none:
        return TextDecoration.none;
      case PhlutsTextDecorationLine.underline:
        return TextDecoration.underline;
      case PhlutsTextDecorationLine.overline:
        return TextDecoration.overline;
      case PhlutsTextDecorationLine.lineThrough:
        return TextDecoration.lineThrough;
    }
  }
}
