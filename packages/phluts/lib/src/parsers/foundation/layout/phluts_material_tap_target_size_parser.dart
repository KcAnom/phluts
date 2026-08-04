import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsMaterialTapTargetSizeParser on PhlutsMaterialTapTargetSize {
  MaterialTapTargetSize get parse {
    switch (this) {
      case PhlutsMaterialTapTargetSize.padded:
        return MaterialTapTargetSize.padded;
      case PhlutsMaterialTapTargetSize.shrinkWrap:
        return MaterialTapTargetSize.shrinkWrap;
    }
  }
}
