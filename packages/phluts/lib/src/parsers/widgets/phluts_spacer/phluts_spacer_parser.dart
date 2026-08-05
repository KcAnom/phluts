import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSpacerParser extends PhlutsParser<PhlutsSpacer> {
  const PhlutsSpacerParser();

  @override
  PhlutsSpacer getModel(Map<String, dynamic> json) =>
      PhlutsSpacer.fromJson(json);

  @override
  String get type => WidgetType.spacer.name;

  @override
  Widget parse(BuildContext context, PhlutsSpacer model) {
    return Spacer(flex: model.flex ?? 1);
  }
}
