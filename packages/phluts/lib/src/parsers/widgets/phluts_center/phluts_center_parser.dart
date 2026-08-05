import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsCenterParser extends PhlutsParser<PhlutsCenter> {
  const PhlutsCenterParser();

  @override
  String get type => WidgetType.center.name;

  @override
  PhlutsCenter getModel(Map<String, dynamic> json) =>
      PhlutsCenter.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsCenter model) {
    return Center(
      widthFactor: model.widthFactor,
      heightFactor: model.heightFactor,
      child: model.child?.parse(context),
    );
  }
}
