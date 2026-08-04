import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsButtonBarLayoutBehavior].
///
/// Converts [PhlutsButtonBarLayoutBehavior] to Flutter's [ButtonBarLayoutBehavior].
extension PhlutsButtonBarLayoutBehaviorParser on PhlutsButtonBarLayoutBehavior {
  ButtonBarLayoutBehavior get parse {
    switch (this) {
      case PhlutsButtonBarLayoutBehavior.constrained:
        return ButtonBarLayoutBehavior.constrained;
      case PhlutsButtonBarLayoutBehavior.padded:
        return ButtonBarLayoutBehavior.padded;
    }
  }
}
