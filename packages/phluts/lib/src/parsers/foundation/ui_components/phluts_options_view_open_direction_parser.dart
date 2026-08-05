import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsOptionsViewOpenDirectionParser
    on PhlutsOptionsViewOpenDirection {
  OptionsViewOpenDirection get parse {
    switch (this) {
      case PhlutsOptionsViewOpenDirection.up:
        return OptionsViewOpenDirection.up;
      case PhlutsOptionsViewOpenDirection.down:
        return OptionsViewOpenDirection.down;
    }
  }
}
