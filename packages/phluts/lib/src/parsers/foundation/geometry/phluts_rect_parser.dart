import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

import 'phluts_offset_parser.dart';

extension PhlutsRectParser on PhlutsRect {
  Rect? get parse {
    Rect fromCenter() => Rect.fromCenter(
      center: center?.parse ?? Offset.zero,
      width: width ?? 0.0,
      height: height ?? 0.0,
    );
    Rect fromCircle() => Rect.fromCircle(
      center: center?.parse ?? Offset.zero,
      radius: radius ?? 0.0,
    );
    Rect fromLTRB() =>
        Rect.fromLTRB(left ?? 0.0, top ?? 0.0, right ?? 0.0, bottom ?? 0.0);
    Rect fromLTWH() =>
        Rect.fromLTWH(left ?? 0.0, top ?? 0.0, width ?? 0.0, height ?? 0.0);
    Rect fromPoints() =>
        Rect.fromPoints(a?.parse ?? Offset.zero, b?.parse ?? Offset.zero);

    switch (rectType) {
      case PhlutsRectType.fromCenter:
        return fromCenter();
      case PhlutsRectType.fromCircle:
        return fromCircle();
      case PhlutsRectType.fromLTRB:
        return fromLTRB();
      case PhlutsRectType.fromLTWH:
        return fromLTWH();
      case PhlutsRectType.fromPoints:
        return fromPoints();
    }
  }
}
