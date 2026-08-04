import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Extends [PhlutsListTileTitleAlignment] to provide parsing functionality.
extension PhlutsListTileTitleAlignmentParser on PhlutsListTileTitleAlignment {
  /// Parses this [PhlutsListTileTitleAlignment] into a Flutter [ListTileTitleAlignment].
  ListTileTitleAlignment get parse {
    switch (this) {
      case PhlutsListTileTitleAlignment.titleHeight:
        return ListTileTitleAlignment.titleHeight;
      case PhlutsListTileTitleAlignment.threeLine:
        return ListTileTitleAlignment.threeLine;
      case PhlutsListTileTitleAlignment.bottom:
        return ListTileTitleAlignment.bottom;
      case PhlutsListTileTitleAlignment.center:
        return ListTileTitleAlignment.center;
    }
  }
}
