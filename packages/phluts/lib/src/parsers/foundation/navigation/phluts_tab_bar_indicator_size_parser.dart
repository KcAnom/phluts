import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsTabBarIndicatorSizeParser on PhlutsTabBarIndicatorSize {
  TabBarIndicatorSize get parse {
    switch (this) {
      case PhlutsTabBarIndicatorSize.label:
        return TabBarIndicatorSize.label;
      case PhlutsTabBarIndicatorSize.tab:
        return TabBarIndicatorSize.tab;
    }
  }
}
