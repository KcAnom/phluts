import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Extends [PhlutsTooltipTriggerMode] to provide parsing functionality.
extension PhlutsTooltipTriggerModeParser on PhlutsTooltipTriggerMode {
  /// Parses this [PhlutsTooltipTriggerMode] into a Flutter [TooltipTriggerMode].
  TooltipTriggerMode get parse {
    switch (this) {
      case PhlutsTooltipTriggerMode.manual:
        return TooltipTriggerMode.manual;
      case PhlutsTooltipTriggerMode.longPress:
        return TooltipTriggerMode.longPress;
      case PhlutsTooltipTriggerMode.tap:
        return TooltipTriggerMode.tap;
    }
  }
}
