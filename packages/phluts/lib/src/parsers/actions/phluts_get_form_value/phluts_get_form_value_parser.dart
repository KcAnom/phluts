import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/widgets/phluts_form/phluts_form_scope.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsGetFormValueParser extends PhlutsActionParser<PhlutsGetFormValue> {
  const PhlutsGetFormValueParser();

  @override
  String get actionType => ActionType.getFormValue.name;

  @override
  PhlutsGetFormValue getModel(Map<String, dynamic> json) =>
      PhlutsGetFormValue.fromJson(json);

  @override
  String? onCall(BuildContext context, PhlutsGetFormValue model) {
    return PhlutsFormScope.of(context)?.formData[model.id].toString();
  }
}
