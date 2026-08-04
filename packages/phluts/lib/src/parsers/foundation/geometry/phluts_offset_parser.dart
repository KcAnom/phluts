import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsOffsetParser on PhlutsOffset {
  Offset get parse {
    return Offset(dx, dy);
  }
}
