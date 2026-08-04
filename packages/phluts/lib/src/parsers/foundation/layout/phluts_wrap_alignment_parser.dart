import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsWrapAlignmentParser on PhlutsWrapAlignment {
  WrapAlignment get parse {
    switch (this) {
      case PhlutsWrapAlignment.start:
        return WrapAlignment.start;
      case PhlutsWrapAlignment.end:
        return WrapAlignment.end;
      case PhlutsWrapAlignment.center:
        return WrapAlignment.center;
      case PhlutsWrapAlignment.spaceBetween:
        return WrapAlignment.spaceBetween;
      case PhlutsWrapAlignment.spaceAround:
        return WrapAlignment.spaceAround;
      case PhlutsWrapAlignment.spaceEvenly:
        return WrapAlignment.spaceEvenly;
    }
  }
}
