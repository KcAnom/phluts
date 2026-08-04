import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Extends [PhlutsScrollViewKeyboardDismissBehavior] to provide parsing functionality.
extension PhlutsScrollViewKeyboardDismissBehaviorParser
    on PhlutsScrollViewKeyboardDismissBehavior {
  /// Parses this [PhlutsScrollViewKeyboardDismissBehavior] into a Flutter [ScrollViewKeyboardDismissBehavior] object.
  ScrollViewKeyboardDismissBehavior get parse {
    switch (this) {
      case PhlutsScrollViewKeyboardDismissBehavior.manual:
        return ScrollViewKeyboardDismissBehavior.manual;
      case PhlutsScrollViewKeyboardDismissBehavior.onDrag:
        return ScrollViewKeyboardDismissBehavior.onDrag;
    }
  }
}
