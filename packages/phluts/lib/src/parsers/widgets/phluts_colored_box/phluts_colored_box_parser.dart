import 'package:flutter/cupertino.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsColoredBoxParser extends PhlutsParser<PhlutsColoredBox> {
  const PhlutsColoredBoxParser();

  @override
  String get type => WidgetType.coloredBox.name;

  @override
  PhlutsColoredBox getModel(Map<String, dynamic> json) =>
      PhlutsColoredBox.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsColoredBox model) {
    return ColoredBox(
      color: model.color.toColor(context)!,
      child: model.child.parse(context),
    );
  }
}
