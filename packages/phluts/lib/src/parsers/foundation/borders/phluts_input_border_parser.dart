import 'package:flutter/material.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

import 'phluts_border_radius_parser.dart';

extension PhlutsInputBorderParser on PhlutsInputBorder? {
  InputBorder? parse(BuildContext context) {
    final border = this;
    if (border == null) return null;
    final side = BorderSide(
      color: border.color?.toColor(context) ?? const Color(0xFF000000),
      width: border.width ?? 1.0,
    );
    switch (border.type) {
      case PhlutsInputBorderType.none:
        return InputBorder.none;
      case PhlutsInputBorderType.underlineInputBorder:
        return UnderlineInputBorder(
          borderSide: side,
          borderRadius:
              border.borderRadius?.parse ??
              BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
        );
      case PhlutsInputBorderType.outlineInputBorder:
        return OutlineInputBorder(
          borderSide: side,
          borderRadius:
              border.borderRadius?.parse ??
              BorderRadius.all(Radius.circular(4.0)),
          gapPadding: border.gapPadding ?? 4.0,
        );
    }
  }
}
