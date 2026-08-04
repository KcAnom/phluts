import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsSmartDashesTypeParser on PhlutsSmartDashesType {
  SmartDashesType get parse {
    switch (this) {
      case PhlutsSmartDashesType.disabled:
        return SmartDashesType.disabled;
      case PhlutsSmartDashesType.enabled:
        return SmartDashesType.enabled;
    }
  }
}
