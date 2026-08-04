import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsMainAxisAlignmentParser on PhlutsMainAxisAlignment {
  MainAxisAlignment get parse {
    switch (this) {
      case PhlutsMainAxisAlignment.start:
        return MainAxisAlignment.start;
      case PhlutsMainAxisAlignment.end:
        return MainAxisAlignment.end;
      case PhlutsMainAxisAlignment.center:
        return MainAxisAlignment.center;
      case PhlutsMainAxisAlignment.spaceBetween:
        return MainAxisAlignment.spaceBetween;
      case PhlutsMainAxisAlignment.spaceAround:
        return MainAxisAlignment.spaceAround;
      case PhlutsMainAxisAlignment.spaceEvenly:
        return MainAxisAlignment.spaceEvenly;
    }
  }
}
