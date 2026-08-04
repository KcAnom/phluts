import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsFloatingActionButtonLocationParser
    on PhlutsFloatingActionButtonLocation {
  FloatingActionButtonLocation get parse {
    switch (this) {
      case PhlutsFloatingActionButtonLocation.startTop:
        return FloatingActionButtonLocation.startTop;
      case PhlutsFloatingActionButtonLocation.miniStartTop:
        return FloatingActionButtonLocation.miniStartTop;
      case PhlutsFloatingActionButtonLocation.centerTop:
        return FloatingActionButtonLocation.centerTop;
      case PhlutsFloatingActionButtonLocation.miniCenterTop:
        return FloatingActionButtonLocation.miniCenterTop;
      case PhlutsFloatingActionButtonLocation.endTop:
        return FloatingActionButtonLocation.endTop;
      case PhlutsFloatingActionButtonLocation.miniEndTop:
        return FloatingActionButtonLocation.miniEndTop;
      case PhlutsFloatingActionButtonLocation.startFloat:
        return FloatingActionButtonLocation.startFloat;
      case PhlutsFloatingActionButtonLocation.miniStartFloat:
        return FloatingActionButtonLocation.miniStartFloat;
      case PhlutsFloatingActionButtonLocation.centerFloat:
        return FloatingActionButtonLocation.centerFloat;
      case PhlutsFloatingActionButtonLocation.miniCenterFloat:
        return FloatingActionButtonLocation.miniCenterFloat;
      case PhlutsFloatingActionButtonLocation.endFloat:
        return FloatingActionButtonLocation.endFloat;
      case PhlutsFloatingActionButtonLocation.miniEndFloat:
        return FloatingActionButtonLocation.miniEndFloat;
      case PhlutsFloatingActionButtonLocation.startDocked:
        return FloatingActionButtonLocation.startDocked;
      case PhlutsFloatingActionButtonLocation.miniStartDocked:
        return FloatingActionButtonLocation.miniStartDocked;
      case PhlutsFloatingActionButtonLocation.centerDocked:
        return FloatingActionButtonLocation.centerDocked;
      case PhlutsFloatingActionButtonLocation.miniCenterDocked:
        return FloatingActionButtonLocation.miniCenterDocked;
      case PhlutsFloatingActionButtonLocation.endDocked:
        return FloatingActionButtonLocation.endDocked;
      case PhlutsFloatingActionButtonLocation.miniEndDocked:
        return FloatingActionButtonLocation.miniEndDocked;
    }
  }
}
