import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsBlendModeParser on PhlutsBlendMode {
  BlendMode get parse {
    switch (this) {
      case PhlutsBlendMode.clear:
        return BlendMode.clear;
      case PhlutsBlendMode.src:
        return BlendMode.src;
      case PhlutsBlendMode.dst:
        return BlendMode.dst;
      case PhlutsBlendMode.srcOver:
        return BlendMode.srcOver;
      case PhlutsBlendMode.dstOver:
        return BlendMode.dstOver;
      case PhlutsBlendMode.srcIn:
        return BlendMode.srcIn;
      case PhlutsBlendMode.dstIn:
        return BlendMode.dstIn;
      case PhlutsBlendMode.srcOut:
        return BlendMode.srcOut;
      case PhlutsBlendMode.dstOut:
        return BlendMode.dstOut;
      case PhlutsBlendMode.srcATop:
        return BlendMode.srcATop;
      case PhlutsBlendMode.dstATop:
        return BlendMode.dstATop;
      case PhlutsBlendMode.xor:
        return BlendMode.xor;
      case PhlutsBlendMode.plus:
        return BlendMode.plus;
      case PhlutsBlendMode.modulate:
        return BlendMode.modulate;
      case PhlutsBlendMode.screen:
        return BlendMode.screen;
      case PhlutsBlendMode.overlay:
        return BlendMode.overlay;
      case PhlutsBlendMode.darken:
        return BlendMode.darken;
      case PhlutsBlendMode.lighten:
        return BlendMode.lighten;
      case PhlutsBlendMode.colorDodge:
        return BlendMode.colorDodge;
      case PhlutsBlendMode.colorBurn:
        return BlendMode.colorBurn;
      case PhlutsBlendMode.hardLight:
        return BlendMode.hardLight;
      case PhlutsBlendMode.softLight:
        return BlendMode.softLight;
      case PhlutsBlendMode.difference:
        return BlendMode.difference;
      case PhlutsBlendMode.exclusion:
        return BlendMode.exclusion;
      case PhlutsBlendMode.multiply:
        return BlendMode.multiply;
      case PhlutsBlendMode.hue:
        return BlendMode.hue;
      case PhlutsBlendMode.saturation:
        return BlendMode.saturation;
      case PhlutsBlendMode.color:
        return BlendMode.color;
      case PhlutsBlendMode.luminosity:
        return BlendMode.luminosity;
    }
  }
}
