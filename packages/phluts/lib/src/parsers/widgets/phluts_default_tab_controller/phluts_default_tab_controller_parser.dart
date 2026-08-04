import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/animation/phluts_duration_parsers.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsDefaultTabControllerParser
    extends PhlutsParser<PhlutsDefaultTabController> {
  const PhlutsDefaultTabControllerParser();

  @override
  String get type => WidgetType.defaultTabController.name;

  @override
  PhlutsDefaultTabController getModel(Map<String, dynamic> json) =>
      PhlutsDefaultTabController.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsDefaultTabController model) {
    return DefaultTabController(
      length: model.length,
      initialIndex: model.initialIndex ?? 0,
      animationDuration: model.animationDuration?.parse,
      child: model.child.parse(context) ?? const SizedBox(),
    );
  }
}
