import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Extends [PhlutsRefreshIndicatorTriggerMode] to provide parsing functionality.
extension PhlutsRefreshIndicatorTriggerModeParser
    on PhlutsRefreshIndicatorTriggerMode {
  /// Parses this [PhlutsRefreshIndicatorTriggerMode] into a Flutter [RefreshIndicatorTriggerMode].
  RefreshIndicatorTriggerMode get parse {
    switch (this) {
      case PhlutsRefreshIndicatorTriggerMode.onEdge:
        return RefreshIndicatorTriggerMode.onEdge;
      case PhlutsRefreshIndicatorTriggerMode.anywhere:
        return RefreshIndicatorTriggerMode.anywhere;
    }
  }
}
