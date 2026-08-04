import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsFilterQualityParser on PhlutsFilterQuality {
  FilterQuality get parse {
    switch (this) {
      case PhlutsFilterQuality.none:
        return FilterQuality.none;
      case PhlutsFilterQuality.low:
        return FilterQuality.low;
      case PhlutsFilterQuality.medium:
        return FilterQuality.medium;
      case PhlutsFilterQuality.high:
        return FilterQuality.high;
    }
  }
}
