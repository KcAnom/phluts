import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsSizeParser on PhlutsSize {
  Size get parse {
    return Size(width, height);
  }
}
