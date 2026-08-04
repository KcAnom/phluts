import 'dart:typed_data';
import 'dart:ui';

import 'package:phluts_core/phluts_core.dart';

extension PhlutsImageFilterParser on PhlutsImageFilter {
  ImageFilter get parse {
    switch (type) {
      case PhlutsImageFilterType.blur:
        final sx = sigmaX ?? 0.0;
        final sy = sigmaY ?? sx;
        return ImageFilter.blur(sigmaX: sx, sigmaY: sy);
      case PhlutsImageFilterType.matrix:
        if (matrix != null && matrix!.length == 16) {
          return ImageFilter.matrix(Float64List.fromList(matrix!));
        }
        return ImageFilter.matrix(Float64List.fromList(List.filled(16, 0)));
      case PhlutsImageFilterType.dilate:
        final rx = radiusX ?? 0.0;
        final ry = radiusY ?? rx;
        return ImageFilter.dilate(radiusX: rx, radiusY: ry);
      case PhlutsImageFilterType.erode:
        final rx = radiusX ?? 0.0;
        final ry = radiusY ?? rx;
        return ImageFilter.erode(radiusX: rx, radiusY: ry);
      case PhlutsImageFilterType.compose:
        final innerFilter = inner?.parse;
        final outerFilter = outer?.parse;
        if (innerFilter != null && outerFilter != null) {
          return ImageFilter.compose(inner: innerFilter, outer: outerFilter);
        }
        return ImageFilter.blur(sigmaX: 0, sigmaY: 0);
    }
  }
}
