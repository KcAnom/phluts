import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_box_constraints_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_size_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parser extension for [PhlutsBottomSheetThemeData].
///
/// Converts [PhlutsBottomSheetThemeData] to Flutter's [BottomSheetThemeData].
extension PhlutsBottomSheetThemeDataParser on PhlutsBottomSheetThemeData {
  BottomSheetThemeData parse(BuildContext context) {
    return BottomSheetThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      elevation: elevation,
      modalBackgroundColor: modalBackgroundColor?.toColor(context),
      modalBarrierColor: modalBarrierColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      modalElevation: modalElevation,
      shape: shape?.parse(context),
      showDragHandle: showDragHandle,
      dragHandleColor: dragHandleColor?.toColor(context),
      dragHandleSize: dragHandleSize?.parse,
      clipBehavior: clipBehavior?.parse,
      constraints: constraints?.parse,
    );
  }
}
