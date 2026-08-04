import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_traversal_edge_behavior_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsDialogActionParser extends PhlutsActionParser<PhlutsDialogAction> {
  const PhlutsDialogActionParser();

  @override
  String get actionType => ActionType.showDialog.name;

  @override
  PhlutsDialogAction getModel(Map<String, dynamic> json) =>
      PhlutsDialogAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, PhlutsDialogAction model) {
    if (model.widget != null) {
      return _showDialog(
        context,
        model,
        Phluts.fromJson(model.widget, context) ?? const SizedBox(),
      );
    } else if (model.assetPath?.isNotEmpty ?? false) {
      return _showDialog(context, model, Phluts.fromAssets(model.assetPath!));
    } else if (model.request != null) {
      return _showDialog(
        context,
        model,
        Phluts.fromNetwork(context: context, request: model.request!),
      );
    }
  }

  Future _showDialog(
    BuildContext context,
    PhlutsDialogAction model,
    Widget widget,
  ) {
    return showDialog(
      context: context,
      builder: (_) => widget,
      barrierDismissible: model.barrierDismissible ?? true,
      barrierColor: model.barrierColor.toColor(context),
      barrierLabel: model.barrierLabel,
      useSafeArea: model.useSafeArea ?? true,
      traversalEdgeBehavior: model.traversalEdgeBehavior?.parse,
    );
  }
}
