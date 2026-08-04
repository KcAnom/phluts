import 'dart:io';

import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_alignment_parser.dart';
import 'package:phluts/src/parsers/foundation/effects/phluts_effects_parsers.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_rect_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_box_fit_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_image_repeat_parser.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsDecorationImageParser on PhlutsDecorationImage {
  DecorationImage? get parse {
    late ImageProvider image;
    switch (imageType) {
      case PhlutsImageType.network:
        image = NetworkImage(src);
        break;
      case PhlutsImageType.file:
        image = FileImage(File(src));
        break;
      case PhlutsImageType.asset:
        image = AssetImage(src);
        break;
      default:
        image = NetworkImage(src);
    }

    return DecorationImage(
      image: image,
      fit: fit?.parse,
      alignment: alignment?.parse ?? Alignment.center,
      centerSlice: centerSlice?.parse,
      repeat: repeat?.parse ?? ImageRepeat.noRepeat,
      matchTextDirection: matchTextDirection ?? false,
      scale: scale ?? 1.0,
      opacity: opacity ?? 1.0,
      filterQuality: filterQuality?.parse ?? FilterQuality.medium,
      invertColors: invertColors ?? false,
      isAntiAlias: isAntiAlias ?? false,
    );
  }
}
