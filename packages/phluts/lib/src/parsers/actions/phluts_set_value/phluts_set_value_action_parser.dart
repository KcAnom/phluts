import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

class PhlutsSetValueActionParser
    extends PhlutsActionParser<PhlutsSetValueAction> {
  const PhlutsSetValueActionParser();

  @override
  String get actionType => ActionType.setValue.name;

  @override
  PhlutsSetValueAction getModel(Map<String, dynamic> json) =>
      PhlutsSetValueAction.fromJson(json);

  @override
  FutureOr<dynamic> onCall(
    BuildContext context,
    PhlutsSetValueAction model,
  ) async {
    for (final value in model.values ?? []) {
      PhlutsRegistry.instance.setValue(value['key'] as String, value['value']);
    }
    return model.action.parse(context);
  }
}
