import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsPositionedParser extends PhlutsParser<PhlutsPositioned> {
  const PhlutsPositionedParser();

  @override
  PhlutsPositioned getModel(Map<String, dynamic> json) =>
      PhlutsPositioned.fromJson(json);

  @override
  String get type => WidgetType.positioned.name;

  @override
  Widget parse(BuildContext context, PhlutsPositioned model) {
    return Positioned(
      left: model.left,
      top: model.top,
      right: model.right,
      bottom: model.bottom,
      height: model.height,
      width: model.width,
      child: model.child.parse(context) ?? const SizedBox(),
    );
  }
}
