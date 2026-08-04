import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_box_constraints_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsModalBottomSheetActionParser
    extends PhlutsActionParser<PhlutsModalBottomSheetAction> {
  const PhlutsModalBottomSheetActionParser();

  @override
  String get actionType => ActionType.showModalBottomSheet.name;

  @override
  PhlutsModalBottomSheetAction getModel(Map<String, dynamic> json) =>
      PhlutsModalBottomSheetAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, model) {
    if (model.widget != null) {
      return _showModalBottomSheet(
        context,
        model,
        model.widget?.parse(context) ?? const SizedBox(),
      );
    } else if (model.assetPath?.isNotEmpty ?? false) {
      return _showModalBottomSheet(
        context,
        model,
        Phluts.fromAssets(model.assetPath!),
      );
    } else if (model.request != null) {
      return _showModalBottomSheet(
        context,
        model,
        Phluts.fromNetwork(context: context, request: model.request!),
      );
    }
  }

  Future _showModalBottomSheet(
    BuildContext context,
    PhlutsModalBottomSheetAction model,
    Widget widget,
  ) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => widget,
      backgroundColor: model.backgroundColor.toColor(context),
      barrierLabel: model.barrierLabel,
      elevation: model.elevation,
      shape: model.shape?.parse(context),
      constraints: model.constraints?.parse,
      barrierColor: model.barrierColor.toColor(context),
      isScrollControlled: model.isScrollControlled ?? false,
      useRootNavigator: model.useRootNavigator ?? false,
      isDismissible: model.isDismissible ?? true,
      enableDrag: model.enableDrag ?? true,
      showDragHandle: model.showDragHandle,
      useSafeArea: model.useSafeArea ?? false,
    );
  }
}
