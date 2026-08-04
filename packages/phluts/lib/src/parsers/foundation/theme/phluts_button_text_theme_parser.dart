import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsButtonTextTheme].
///
/// Converts [PhlutsButtonTextTheme] to Flutter's [ButtonTextTheme].
extension PhlutsButtonTextThemeParser on PhlutsButtonTextTheme {
  ButtonTextTheme parse(BuildContext context) {
    switch (this) {
      case PhlutsButtonTextTheme.normal:
        return ButtonTextTheme.normal;
      case PhlutsButtonTextTheme.accent:
        return ButtonTextTheme.accent;
      case PhlutsButtonTextTheme.primary:
        return ButtonTextTheme.primary;
    }
  }
}
