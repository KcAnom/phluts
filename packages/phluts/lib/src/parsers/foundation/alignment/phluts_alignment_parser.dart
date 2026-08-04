import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsAlignmentParser on PhlutsAlignment {
  Alignment get parse {
    switch (this) {
      case PhlutsAlignment.topLeft:
        return Alignment.topLeft;
      case PhlutsAlignment.topCenter:
        return Alignment.topCenter;
      case PhlutsAlignment.topRight:
        return Alignment.topRight;
      case PhlutsAlignment.centerLeft:
        return Alignment.centerLeft;
      case PhlutsAlignment.center:
        return Alignment.center;
      case PhlutsAlignment.centerRight:
        return Alignment.centerRight;
      case PhlutsAlignment.bottomLeft:
        return Alignment.bottomLeft;
      case PhlutsAlignment.bottomCenter:
        return Alignment.bottomCenter;
      case PhlutsAlignment.bottomRight:
        return Alignment.bottomRight;
    }
  }
}
