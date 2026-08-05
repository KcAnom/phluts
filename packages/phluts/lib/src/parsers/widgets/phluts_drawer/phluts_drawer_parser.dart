import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsDrawerParser extends PhlutsParser<PhlutsDrawer> {
  const PhlutsDrawerParser();

  @override
  String get type => WidgetType.drawer.name;

  @override
  PhlutsDrawer getModel(Map<String, dynamic> json) =>
      PhlutsDrawer.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsDrawer model) {
    return Drawer(
      backgroundColor: model.backgroundColor?.toColor(context),
      elevation: model.elevation,
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      shape: model.shape?.parse(context),
      width: model.width,
      semanticLabel: model.semanticLabel,
      clipBehavior: model.clipBehavior?.parse,
      child: model.child?.parse(context),
    );
  }
}
