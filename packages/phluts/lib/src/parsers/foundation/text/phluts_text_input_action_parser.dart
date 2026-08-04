import 'package:flutter/services.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsTextInputActionParser on PhlutsTextInputAction {
  TextInputAction get parse {
    switch (this) {
      case PhlutsTextInputAction.none:
        return TextInputAction.none;
      case PhlutsTextInputAction.unspecified:
        return TextInputAction.unspecified;
      case PhlutsTextInputAction.done:
        return TextInputAction.done;
      case PhlutsTextInputAction.go:
        return TextInputAction.go;
      case PhlutsTextInputAction.search:
        return TextInputAction.search;
      case PhlutsTextInputAction.send:
        return TextInputAction.send;
      case PhlutsTextInputAction.next:
        return TextInputAction.next;
      case PhlutsTextInputAction.previous:
        return TextInputAction.previous;
      case PhlutsTextInputAction.continueAction:
        return TextInputAction.continueAction;
      case PhlutsTextInputAction.join:
        return TextInputAction.join;
      case PhlutsTextInputAction.route:
        return TextInputAction.route;
      case PhlutsTextInputAction.emergencyCall:
        return TextInputAction.emergencyCall;
      case PhlutsTextInputAction.newline:
        return TextInputAction.newline;
    }
  }
}
