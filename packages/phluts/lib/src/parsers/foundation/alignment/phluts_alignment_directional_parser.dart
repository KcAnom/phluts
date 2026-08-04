import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsAlignmentDirectionalParser on PhlutsAlignmentDirectional {
  AlignmentDirectional get parse {
    switch (this) {
      case PhlutsAlignmentDirectional.topStart:
        return AlignmentDirectional.topStart;
      case PhlutsAlignmentDirectional.topCenter:
        return AlignmentDirectional.topCenter;
      case PhlutsAlignmentDirectional.topEnd:
        return AlignmentDirectional.topEnd;
      case PhlutsAlignmentDirectional.centerStart:
        return AlignmentDirectional.centerStart;
      case PhlutsAlignmentDirectional.center:
        return AlignmentDirectional.center;
      case PhlutsAlignmentDirectional.centerEnd:
        return AlignmentDirectional.centerEnd;
      case PhlutsAlignmentDirectional.bottomStart:
        return AlignmentDirectional.bottomStart;
      case PhlutsAlignmentDirectional.bottomCenter:
        return AlignmentDirectional.bottomCenter;
      case PhlutsAlignmentDirectional.bottomEnd:
        return AlignmentDirectional.bottomEnd;
    }
  }
}
