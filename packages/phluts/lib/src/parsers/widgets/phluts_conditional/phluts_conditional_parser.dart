import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/utils/expression_resolver.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsConditionalParser extends PhlutsParser<PhlutsConditional> {
  const PhlutsConditionalParser();

  @override
  String get type => WidgetType.conditional.name;

  @override
  PhlutsConditional getModel(Map<String, dynamic> json) =>
      PhlutsConditional.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsConditional model) {
    final result = ExpressionResolver.evaluate(model.condition);
    if (result) {
      return model.ifTrue.parse(context) ?? const SizedBox();
    } else if (model.ifFalse != null) {
      return model.ifFalse.parse(context) ?? const SizedBox();
    }
    return const SizedBox();
  }
}
