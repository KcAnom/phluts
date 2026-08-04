import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsStackFitParser on PhlutsStackFit {
  StackFit get parse {
    switch (this) {
      case PhlutsStackFit.loose:
        return StackFit.loose;
      case PhlutsStackFit.expand:
        return StackFit.expand;
      case PhlutsStackFit.passthrough:
        return StackFit.passthrough;
    }
  }
}
