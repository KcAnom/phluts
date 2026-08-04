import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts/src/parsers/widgets/phluts_form/phluts_form_scope.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsFormValidateParser extends PhlutsActionParser<PhlutsFormValidate> {
  const PhlutsFormValidateParser();

  @override
  String get actionType => ActionType.validateForm.name;

  @override
  PhlutsFormValidate getModel(Map<String, dynamic> json) =>
      PhlutsFormValidate.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, PhlutsFormValidate model) {
    final isValid =
        PhlutsFormScope.of(context)?.formKey.currentState?.validate() ?? false;

    if (isValid) {
      return model.isValid?.parse(context);
    } else {
      return model.isNotValid?.parse(context);
    }
  }
}
