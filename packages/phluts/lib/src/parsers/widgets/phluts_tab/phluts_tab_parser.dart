import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsTabParser extends PhlutsParser<PhlutsTab> {
  const PhlutsTabParser();

  @override
  PhlutsTab getModel(Map<String, dynamic> json) => PhlutsTab.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsTab model) {
    return Tab(
      text: model.text,
      icon: model.icon?.parse(context),
      iconMargin: model.iconMargin?.parse,
      height: model.height,
      child: model.child?.parse(context),
    );
  }

  @override
  String get type => WidgetType.tab.name;
}
