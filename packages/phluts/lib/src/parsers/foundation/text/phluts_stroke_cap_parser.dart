import 'dart:ui';

import 'package:phluts_core/phluts_core.dart';

extension PhlutsStrokeCapParser on PhlutsStrokeCap? {
  StrokeCap? get parse {
    switch (this) {
      case PhlutsStrokeCap.butt:
        return StrokeCap.butt;
      case PhlutsStrokeCap.round:
        return StrokeCap.round;
      case PhlutsStrokeCap.square:
        return StrokeCap.square;
      default:
        return null;
    }
  }
}
