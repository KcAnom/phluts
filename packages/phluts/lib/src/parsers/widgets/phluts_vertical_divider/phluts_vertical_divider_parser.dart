import 'package:flutter/material.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsVerticalDividerParser extends PhlutsParser<PhlutsVerticalDivider> {
  const PhlutsVerticalDividerParser();

  @override
  String get type => WidgetType.verticalDivider.name;

  @override
  PhlutsVerticalDivider getModel(Map<String, dynamic> json) =>
      PhlutsVerticalDivider.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsVerticalDivider model) {
    return VerticalDivider(
      width: model.width,
      thickness: model.thickness,
      indent: model.indent,
      endIndent: model.endIndent,
      color: model.color?.toColor(context),
    );
  }
}
