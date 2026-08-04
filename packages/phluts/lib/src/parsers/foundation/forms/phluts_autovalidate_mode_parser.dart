import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Extends [PhlutsAutovalidateMode] to provide parsing functionality.
extension PhlutsAutovalidateModeParser on PhlutsAutovalidateMode {
  /// Parses this [PhlutsAutovalidateMode] into a Flutter [AutovalidateMode].
  AutovalidateMode get parse {
    switch (this) {
      case PhlutsAutovalidateMode.disabled:
        return AutovalidateMode.disabled;
      case PhlutsAutovalidateMode.always:
        return AutovalidateMode.always;
      case PhlutsAutovalidateMode.onUserInteraction:
        return AutovalidateMode.onUserInteraction;
    }
  }
}
