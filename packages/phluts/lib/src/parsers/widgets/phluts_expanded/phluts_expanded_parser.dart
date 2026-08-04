import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsExpandedParser extends PhlutsParser<PhlutsExpanded> {
  const PhlutsExpandedParser();

  @override
  String get type => WidgetType.expanded.name;

  @override
  PhlutsExpanded getModel(Map<String, dynamic> json) =>
      PhlutsExpanded.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsExpanded model) {
    return Expanded(
      flex: model.flex ?? 1,
      child: model.child.parse(context) ?? const SizedBox(),
    );
  }
}
