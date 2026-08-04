import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Maps [PhlutsTextBaseline] to Flutter's [TextBaseline].
extension PhlutsTextBaselineParser on PhlutsTextBaseline {
  /// Parses this [PhlutsTextBaseline] into a Flutter [TextBaseline].
  TextBaseline get parse {
    switch (this) {
      case PhlutsTextBaseline.alphabetic:
        return TextBaseline.alphabetic;
      case PhlutsTextBaseline.ideographic:
        return TextBaseline.ideographic;
    }
  }
}
