import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsDelayActionParser extends PhlutsActionParser<PhlutsDelayAction> {
  const PhlutsDelayActionParser();

  @override
  String get actionType => ActionType.delay.name;

  @override
  PhlutsDelayAction getModel(Map<String, dynamic> json) =>
      PhlutsDelayAction.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, PhlutsDelayAction model) {
    final ms = model.milliseconds ?? 1000;
    return Future.delayed(Duration(milliseconds: ms));
  }
}
