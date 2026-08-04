import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Maps [PhlutsTableCellVerticalAlignment] to Flutter's [TableCellVerticalAlignment].
extension PhlutsTableCellVerticalAlignmentParser
    on PhlutsTableCellVerticalAlignment? {
  TableCellVerticalAlignment get parse {
    switch (this) {
      case PhlutsTableCellVerticalAlignment.top:
        return TableCellVerticalAlignment.top;
      case PhlutsTableCellVerticalAlignment.middle:
        return TableCellVerticalAlignment.middle;
      case PhlutsTableCellVerticalAlignment.bottom:
        return TableCellVerticalAlignment.bottom;
      case PhlutsTableCellVerticalAlignment.baseline:
        return TableCellVerticalAlignment.baseline;
      case PhlutsTableCellVerticalAlignment.fill:
        return TableCellVerticalAlignment.fill;
      default:
        return TableCellVerticalAlignment.top;
    }
  }
}
