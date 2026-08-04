import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsSmartQuotesTypeParser on PhlutsSmartQuotesType {
  SmartQuotesType get parse {
    switch (this) {
      case PhlutsSmartQuotesType.disabled:
        return SmartQuotesType.disabled;
      case PhlutsSmartQuotesType.enabled:
        return SmartQuotesType.enabled;
    }
  }
}
