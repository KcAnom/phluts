import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Extends [PhlutsDismissDirection] to map to Flutter's [DismissDirection].
extension PhlutsDismissDirectionParser on PhlutsDismissDirection? {
  DismissDirection? get parse {
    switch (this) {
      case PhlutsDismissDirection.horizontal:
        return DismissDirection.horizontal;
      case PhlutsDismissDirection.vertical:
        return DismissDirection.vertical;
      case PhlutsDismissDirection.down:
        return DismissDirection.down;
      case PhlutsDismissDirection.up:
        return DismissDirection.up;
      case PhlutsDismissDirection.endToStart:
        return DismissDirection.endToStart;
      case PhlutsDismissDirection.startToEnd:
        return DismissDirection.startToEnd;
      default:
        return null;
    }
  }
}
