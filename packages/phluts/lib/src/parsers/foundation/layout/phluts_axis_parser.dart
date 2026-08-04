import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsAxisParser on PhlutsAxis {
  Axis get parse {
    switch (this) {
      case PhlutsAxis.horizontal:
        return Axis.horizontal;
      case PhlutsAxis.vertical:
        return Axis.vertical;
    }
  }
}
