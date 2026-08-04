import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Extends [PhlutsListTileStyle] to provide parsing functionality.
extension PhlutsListTileStyleParser on PhlutsListTileStyle {
  /// Parses this [PhlutsListTileStyle] into a Flutter [ListTileStyle].
  ListTileStyle get parse {
    switch (this) {
      case PhlutsListTileStyle.list:
        return ListTileStyle.list;
      case PhlutsListTileStyle.drawer:
        return ListTileStyle.drawer;
    }
  }
}
