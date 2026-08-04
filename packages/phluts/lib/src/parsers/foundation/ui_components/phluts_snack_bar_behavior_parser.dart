import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Extends [PhlutsSnackBarBehavior] to map to Flutter's [SnackBarBehavior].
extension PhlutsSnackBarBehaviorParser on PhlutsSnackBarBehavior? {
  SnackBarBehavior? get parse {
    switch (this) {
      case PhlutsSnackBarBehavior.fixed:
        return SnackBarBehavior.fixed;
      case PhlutsSnackBarBehavior.floating:
        return SnackBarBehavior.floating;
      default:
        return null;
    }
  }
}
