import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsBottomNavigationBarTypeParser on PhlutsBottomNavigationBarType {
  BottomNavigationBarType get parse {
    switch (this) {
      case PhlutsBottomNavigationBarType.fixed:
        return BottomNavigationBarType.fixed;
      case PhlutsBottomNavigationBarType.shifting:
        return BottomNavigationBarType.shifting;
    }
  }
}
