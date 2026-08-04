import 'package:flutter/gestures.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsDragStartBehaviorParser on PhlutsDragStartBehavior {
  DragStartBehavior get parse {
    switch (this) {
      case PhlutsDragStartBehavior.down:
        return DragStartBehavior.down;
      case PhlutsDragStartBehavior.start:
        return DragStartBehavior.start;
    }
  }
}
