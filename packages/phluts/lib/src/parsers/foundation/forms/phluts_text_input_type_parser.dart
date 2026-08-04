import 'package:flutter/services.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsTextInputTypeParser on PhlutsTextInputType {
  TextInputType get parse {
    switch (this) {
      case PhlutsTextInputType.text:
        return TextInputType.text;
      case PhlutsTextInputType.multiline:
        return TextInputType.multiline;
      case PhlutsTextInputType.number:
        return TextInputType.number;
      case PhlutsTextInputType.phone:
        return TextInputType.phone;
      case PhlutsTextInputType.datetime:
        return TextInputType.datetime;
      case PhlutsTextInputType.emailAddress:
        return TextInputType.emailAddress;
      case PhlutsTextInputType.url:
        return TextInputType.url;
      case PhlutsTextInputType.visiblePassword:
        return TextInputType.visiblePassword;
      case PhlutsTextInputType.name:
        return TextInputType.name;
      case PhlutsTextInputType.streetAddress:
        return TextInputType.streetAddress;
      case PhlutsTextInputType.none:
        return TextInputType.none;
    }
  }
}
