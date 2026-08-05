import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsOpacityParser extends PhlutsParser<PhlutsOpacity> {
  const PhlutsOpacityParser();

  @override
  String get type => WidgetType.opacity.name;

  @override
  PhlutsOpacity getModel(Map<String, dynamic> json) =>
      PhlutsOpacity.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsOpacity model) {
    return Opacity(
      opacity: model.opacity,
      alwaysIncludeSemantics: model.alwaysIncludeSemantics ?? false,
      child: model.child?.parse(context),
    );
  }
}
