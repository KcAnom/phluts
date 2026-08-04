import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsFlexFitParser on PhlutsFlexFit {
  FlexFit get parse {
    switch (this) {
      case PhlutsFlexFit.tight:
        return FlexFit.tight;
      case PhlutsFlexFit.loose:
        return FlexFit.loose;
    }
  }
}
