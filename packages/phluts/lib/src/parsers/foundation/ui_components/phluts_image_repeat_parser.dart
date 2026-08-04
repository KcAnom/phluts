import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsImageRepeatParser on PhlutsImageRepeat {
  ImageRepeat get parse {
    switch (this) {
      case PhlutsImageRepeat.repeat:
        return ImageRepeat.repeat;
      case PhlutsImageRepeat.repeatX:
        return ImageRepeat.repeatX;
      case PhlutsImageRepeat.repeatY:
        return ImageRepeat.repeatY;
      case PhlutsImageRepeat.noRepeat:
        return ImageRepeat.noRepeat;
    }
  }
}
