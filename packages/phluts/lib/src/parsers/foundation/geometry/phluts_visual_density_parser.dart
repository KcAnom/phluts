import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsVisualDensityParser on PhlutsVisualDensity {
  VisualDensity get parse {
    return VisualDensity(
      horizontal: horizontal ?? 0.0,
      vertical: vertical ?? 0.0,
    );
  }
}
