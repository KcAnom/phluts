import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsBoxShapeParser on PhlutsBoxShape {
  BoxShape get parse {
    switch (this) {
      case PhlutsBoxShape.rectangle:
        return BoxShape.rectangle;
      case PhlutsBoxShape.circle:
        return BoxShape.circle;
    }
  }
}
