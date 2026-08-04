import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsClipParser on PhlutsClip {
  Clip get parse {
    switch (this) {
      case PhlutsClip.none:
        return Clip.none;
      case PhlutsClip.hardEdge:
        return Clip.hardEdge;
      case PhlutsClip.antiAlias:
        return Clip.antiAlias;
      case PhlutsClip.antiAliasWithSaveLayer:
        return Clip.antiAliasWithSaveLayer;
    }
  }
}
