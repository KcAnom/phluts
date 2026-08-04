import 'package:flutter/material.dart';

enum PhlutsTextAlignVertical {
  top,
  center,
  bottom;

  TextAlignVertical get value {
    switch (this) {
      case PhlutsTextAlignVertical.top:
        return TextAlignVertical.top;
      case PhlutsTextAlignVertical.center:
        return TextAlignVertical.center;
      case PhlutsTextAlignVertical.bottom:
        return TextAlignVertical.bottom;
    }
  }
}

enum PhlutsTextInputType {
  text,
  multiline,
  number,
  phone,
  datetime,
  emailAddress,
  url,
  visiblePassword,
  name,
  streetAddress,
  none;

  TextInputType get value {
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
      default:
        return TextInputType.none;
    }
  }
}
