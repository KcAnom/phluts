import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsMainAxisSizeParser on PhlutsMainAxisSize {
  MainAxisSize get parse {
    switch (this) {
      case PhlutsMainAxisSize.min:
        return MainAxisSize.min;
      case PhlutsMainAxisSize.max:
        return MainAxisSize.max;
    }
  }
}
