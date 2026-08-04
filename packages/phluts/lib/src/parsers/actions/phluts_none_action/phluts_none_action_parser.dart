import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsNoneActionParser extends PhlutsActionParser<dynamic> {
  const PhlutsNoneActionParser();

  @override
  String get actionType => ActionType.none.name;

  @override
  getModel(Map<String, dynamic> json) => json;

  @override
  FutureOr<dynamic> onCall(BuildContext context, model) {}
}
