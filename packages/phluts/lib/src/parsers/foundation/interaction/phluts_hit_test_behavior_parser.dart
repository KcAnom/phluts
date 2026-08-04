import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Extends [PhlutsHitTestBehavior] to provide parsing functionality.
extension PhlutsHitTestBehaviorParser on PhlutsHitTestBehavior {
  /// Parses this [PhlutsHitTestBehavior] into a Flutter [HitTestBehavior].
  HitTestBehavior get parse {
    switch (this) {
      case PhlutsHitTestBehavior.deferToChild:
        return HitTestBehavior.deferToChild;
      case PhlutsHitTestBehavior.opaque:
        return HitTestBehavior.opaque;
      case PhlutsHitTestBehavior.translucent:
        return HitTestBehavior.translucent;
    }
  }
}
