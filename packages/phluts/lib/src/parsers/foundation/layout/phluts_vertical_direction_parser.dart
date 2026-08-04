import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsVerticalDirectionParser on PhlutsVerticalDirection {
  VerticalDirection get parse {
    switch (this) {
      case PhlutsVerticalDirection.up:
        return VerticalDirection.up;
      case PhlutsVerticalDirection.down:
        return VerticalDirection.down;
    }
  }
}
