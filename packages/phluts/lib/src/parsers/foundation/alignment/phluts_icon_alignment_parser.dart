import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsIconAlignmentParser on PhlutsIconAlignment {
  IconAlignment get parse {
    switch (this) {
      case PhlutsIconAlignment.start:
        return IconAlignment.start;
      case PhlutsIconAlignment.end:
        return IconAlignment.end;
    }
  }
}
