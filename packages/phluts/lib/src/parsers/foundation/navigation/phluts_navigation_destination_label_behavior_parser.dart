import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsNavigationDestinationLabelBehavior].
///
/// Converts [PhlutsNavigationDestinationLabelBehavior] to Flutter's [NavigationDestinationLabelBehavior].
extension PhlutsNavigationDestinationLabelBehaviorParser
    on PhlutsNavigationDestinationLabelBehavior {
  NavigationDestinationLabelBehavior get parse {
    switch (this) {
      case PhlutsNavigationDestinationLabelBehavior.alwaysShow:
        return NavigationDestinationLabelBehavior.alwaysShow;
      case PhlutsNavigationDestinationLabelBehavior.alwaysHide:
        return NavigationDestinationLabelBehavior.alwaysHide;
      case PhlutsNavigationDestinationLabelBehavior.onlyShowSelected:
        return NavigationDestinationLabelBehavior.onlyShowSelected;
    }
  }
}
