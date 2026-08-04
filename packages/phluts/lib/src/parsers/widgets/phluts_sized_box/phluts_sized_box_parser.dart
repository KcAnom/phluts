import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSizedBoxParser extends PhlutsParser<PhlutsSizedBox> {
  const PhlutsSizedBoxParser();

  @override
  PhlutsSizedBox getModel(Map<String, dynamic> json) =>
      PhlutsSizedBox.fromJson(json);

  @override
  String get type => WidgetType.sizedBox.name;

  @override
  Widget parse(BuildContext context, PhlutsSizedBox model) {
    return SizedBox(
      width: model.width,
      height: model.height,
      child: model.child.parse(context),
    );
  }
}
