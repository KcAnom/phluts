import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_flex_fit_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsFlexibleParser extends PhlutsParser<PhlutsFlexible> {
  const PhlutsFlexibleParser();

  @override
  String get type => WidgetType.flexible.name;

  @override
  PhlutsFlexible getModel(Map<String, dynamic> json) =>
      PhlutsFlexible.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsFlexible model) {
    return Flexible(
      fit: model.fit?.parse ?? FlexFit.loose,
      flex: model.flex ?? 1,
      child: model.child.parse(context) ?? const SizedBox.shrink(),
    );
  }
}
