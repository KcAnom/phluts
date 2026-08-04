import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsAlignmentGeometryParser on PhlutsAlignmentGeometry {
  Alignment get parse {
    return Alignment(dx, dy);
  }
}
