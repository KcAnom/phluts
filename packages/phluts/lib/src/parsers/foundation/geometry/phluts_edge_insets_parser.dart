import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsEdgeInsetsParser on PhlutsEdgeInsets {
  EdgeInsets get parse {
    return EdgeInsets.only(
      left: left ?? 0,
      right: right ?? 0,
      top: top ?? 0,
      bottom: bottom ?? 0,
    );
  }
}
