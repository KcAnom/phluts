import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parses a [PhlutsTableColumnWidth] to a Flutter [TableColumnWidth].
extension PhlutsTableColumnWidthParser on PhlutsTableColumnWidth {
  TableColumnWidth get parse {
    switch (type) {
      case PhlutsTableColumnWidthType.fixedColumnWidth:
        return FixedColumnWidth(value ?? 0.0);
      case PhlutsTableColumnWidthType.flexColumnWidth:
        return FlexColumnWidth(value ?? 1.0);
      case PhlutsTableColumnWidthType.fractionColumnWidth:
        return FractionColumnWidth(value ?? 0.5);
      case PhlutsTableColumnWidthType.intrinsicColumnWidth:
        return IntrinsicColumnWidth(flex: value ?? 1.0);
    }
  }
}
