import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_alignment_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

import 'phluts_tile_mode_parser.dart';

extension PhlutsGradientParser on PhlutsGradient {
  Gradient? parse(BuildContext context) {
    Gradient linearGradient() => LinearGradient(
      colors: colors?.map((e) => e.toColor(context)!).toList() ?? [],
      begin: begin?.parse ?? Alignment.centerLeft,
      end: end?.parse ?? Alignment.centerRight,
      stops: stops,
      tileMode: tileMode?.parse ?? TileMode.clamp,
    );

    Gradient radialGradient() => RadialGradient(
      colors: colors?.map((e) => e.toColor(context)!).toList() ?? [],
      stops: stops,
      tileMode: tileMode?.parse ?? TileMode.clamp,
      focal: focal?.parse,
      focalRadius: focalRadius ?? 0.0,
      radius: radius ?? 0.5,
      center: center?.parse ?? Alignment.center,
    );

    Gradient sweepGradient() => SweepGradient(
      colors: colors?.map((e) => e.toColor(context)!).toList() ?? [],
      stops: stops,
      center: center?.parse ?? Alignment.center,
      startAngle: startAngle ?? 0.0,
      endAngle: endAngle ?? math.pi * 2,
      tileMode: tileMode?.parse ?? TileMode.clamp,
    );

    switch (gradientType) {
      case PhlutsGradientType.linear:
        return linearGradient();
      case PhlutsGradientType.radial:
        return radialGradient();
      case PhlutsGradientType.sweep:
        return sweepGradient();
      default:
        return linearGradient();
    }
  }
}
