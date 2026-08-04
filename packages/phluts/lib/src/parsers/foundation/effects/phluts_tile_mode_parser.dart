import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsTileModeParser on PhlutsTileMode {
  TileMode get parse {
    switch (this) {
      case PhlutsTileMode.clamp:
        return TileMode.clamp;
      case PhlutsTileMode.repeated:
        return TileMode.repeated;
      case PhlutsTileMode.mirror:
        return TileMode.mirror;
      case PhlutsTileMode.decal:
        return TileMode.decal;
    }
  }
}
