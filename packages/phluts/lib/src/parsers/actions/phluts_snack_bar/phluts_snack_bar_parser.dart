import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts/src/parsers/foundation/animation/phluts_duration_parsers.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_hit_test_behavior_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_dismiss_direction_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_snack_bar_behavior_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSnackBarParser extends PhlutsActionParser<PhlutsSnackBar> {
  const PhlutsSnackBarParser();

  @override
  String get actionType => ActionType.showSnackBar.name;

  @override
  PhlutsSnackBar getModel(Map<String, dynamic> json) =>
      PhlutsSnackBar.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, PhlutsSnackBar model) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.hideCurrentSnackBar();

    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Phluts.fromJson(model.content, context) ?? SizedBox.shrink(),
        backgroundColor: model.backgroundColor?.toColor(context),
        elevation: model.elevation,
        margin: model.margin?.parse,
        padding: model.padding?.parse,
        width: model.width,
        shape: model.shape?.parse(context),
        hitTestBehavior: model.hitTestBehavior?.parse,
        behavior: model.behavior?.parse,
        action: _parseAction(context, model.action),
        actionOverflowThreshold: model.actionOverflowThreshold,
        showCloseIcon: model.showCloseIcon,
        closeIconColor: model.closeIconColor?.toColor(context),
        duration: model.duration?.parse ?? const Duration(milliseconds: 4000),
        onVisible: () => Phluts.onCallFromJson(model.onVisible, context),
        dismissDirection: model.dismissDirection?.parse,
        clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      ),
    );
  }

  SnackBarAction? _parseAction(
    BuildContext context,
    PhlutsSnackBarAction? action,
  ) {
    if (action == null) return null;
    return SnackBarAction(
      textColor: action.textColor?.toColor(context),
      disabledTextColor: action.disabledTextColor?.toColor(context),
      backgroundColor: action.backgroundColor?.toColor(context),
      disabledBackgroundColor: action.disabledBackgroundColor?.toColor(context),
      label: action.label,
      onPressed: () => action.onPressed.parse(context),
    );
  }
}
