import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsTextOverflowParser on PhlutsTextOverflow {
  TextOverflow get parse {
    switch (this) {
      case PhlutsTextOverflow.clip:
        return TextOverflow.clip;
      case PhlutsTextOverflow.fade:
        return TextOverflow.fade;
      case PhlutsTextOverflow.ellipsis:
        return TextOverflow.ellipsis;
      case PhlutsTextOverflow.visible:
        return TextOverflow.visible;
    }
  }
}
