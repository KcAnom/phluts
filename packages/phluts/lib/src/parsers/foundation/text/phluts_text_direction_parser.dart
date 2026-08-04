import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsTextDirectionParser on PhlutsTextDirection {
  TextDirection get parse {
    switch (this) {
      case PhlutsTextDirection.rtl:
        return TextDirection.rtl;
      case PhlutsTextDirection.ltr:
        return TextDirection.ltr;
    }
  }
}
