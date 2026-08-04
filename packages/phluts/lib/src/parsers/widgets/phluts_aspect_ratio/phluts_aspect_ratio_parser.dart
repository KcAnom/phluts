import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsAspectRatioParser extends PhlutsParser<PhlutsAspectRatio> {
  const PhlutsAspectRatioParser();

  @override
  String get type => WidgetType.aspectRatio.name;

  @override
  PhlutsAspectRatio getModel(Map<String, dynamic> json) =>
      PhlutsAspectRatio.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsAspectRatio model) {
    return AspectRatio(
      aspectRatio: model.aspectRatio,
      child: model.child.parse(context),
    );
  }
}
