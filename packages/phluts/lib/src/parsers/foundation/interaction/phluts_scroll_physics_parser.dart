import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Extends [PhlutsScrollPhysics] enum to provide parsing functionality.
extension PhlutsScrollPhysicsEnumParser on PhlutsScrollPhysics {
  /// Parses this [PhlutsScrollPhysics] enum into a Flutter [ScrollPhysics] object.
  ScrollPhysics get parse {
    switch (this) {
      case PhlutsScrollPhysics.never:
        return const NeverScrollableScrollPhysics();
      case PhlutsScrollPhysics.bouncing:
        return const BouncingScrollPhysics();
      case PhlutsScrollPhysics.clamping:
        return const ClampingScrollPhysics();
      case PhlutsScrollPhysics.fixed:
        return const FixedExtentScrollPhysics();
      case PhlutsScrollPhysics.page:
        return const PageScrollPhysics();
    }
  }
}
