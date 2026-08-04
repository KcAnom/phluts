import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsMultiActionParser extends PhlutsActionParser<PhlutsMultiAction> {
  const PhlutsMultiActionParser();

  @override
  String get actionType => ActionType.multiAction.name;

  @override
  PhlutsMultiAction getModel(Map<String, dynamic> json) =>
      PhlutsMultiAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, PhlutsMultiAction model) async {
    final actions = model.actions ?? [];
    for (var action in actions) {
      model.sync ? await action.parse(context) : action.parse(context);
    }
  }
}
