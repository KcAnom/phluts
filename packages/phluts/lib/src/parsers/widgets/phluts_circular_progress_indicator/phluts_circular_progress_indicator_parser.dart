import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_stroke_cap_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsCircularProgressIndicatorParser
    extends PhlutsParser<PhlutsCircularProgressIndicator> {
  const PhlutsCircularProgressIndicatorParser();

  @override
  String get type => WidgetType.circularProgressIndicator.name;

  @override
  PhlutsCircularProgressIndicator getModel(Map<String, dynamic> json) =>
      PhlutsCircularProgressIndicator.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsCircularProgressIndicator model) {
    return CircularProgressIndicator(
      value: model.value,
      backgroundColor: model.backgroundColor?.toColor(context),
      color: model.color?.toColor(context),
      strokeWidth: model.strokeWidth ?? 4.0,
      strokeAlign: model.strokeAlign ?? 0.0,
      semanticsLabel: model.semanticsLabel,
      semanticsValue: model.semanticsValue,
      strokeCap: model.strokeCap?.parse,
    );
  }
}
