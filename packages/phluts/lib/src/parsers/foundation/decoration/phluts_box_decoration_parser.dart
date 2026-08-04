import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

extension PhlutsBoxDecorationParser on PhlutsBoxDecoration {
  BoxDecoration? parse(BuildContext context) {
    return BoxDecoration(
      color: color?.toColor(context),
      image: image?.parse, // Todo
      border: border?.parse(context),
      borderRadius: borderRadius?.parse,
      boxShadow: boxShadow?.map((e) => e.parse(context)).toList() ?? [],
      gradient: gradient?.parse(context),
      backgroundBlendMode: backgroundBlendMode?.parse,
      shape: shape?.parse ?? BoxShape.rectangle,
    );
  }
}
