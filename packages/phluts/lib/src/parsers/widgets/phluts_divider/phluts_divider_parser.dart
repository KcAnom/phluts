import 'package:flutter/material.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsDividerParser extends PhlutsParser<PhlutsDivider> {
  const PhlutsDividerParser();

  @override
  String get type => WidgetType.divider.name;

  @override
  PhlutsDivider getModel(Map<String, dynamic> json) =>
      PhlutsDivider.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsDivider model) {
    return Divider(
      height: model.height,
      thickness: model.thickness,
      indent: model.indent,
      endIndent: model.endIndent,
      color: model.color?.toColor(context),
    );
  }
}
