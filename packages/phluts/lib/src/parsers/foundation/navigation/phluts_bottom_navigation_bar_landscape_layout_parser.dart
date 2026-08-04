import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsBottomNavigationBarLandscapeLayoutParser
    on PhlutsBottomNavigationBarLandscapeLayout {
  BottomNavigationBarLandscapeLayout get parse {
    switch (this) {
      case PhlutsBottomNavigationBarLandscapeLayout.spread:
        return BottomNavigationBarLandscapeLayout.spread;
      case PhlutsBottomNavigationBarLandscapeLayout.centered:
        return BottomNavigationBarLandscapeLayout.centered;
      case PhlutsBottomNavigationBarLandscapeLayout.linear:
        return BottomNavigationBarLandscapeLayout.linear;
    }
  }
}
