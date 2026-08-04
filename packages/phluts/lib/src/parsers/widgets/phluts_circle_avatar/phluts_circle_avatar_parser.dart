import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsCircleAvatarParser extends PhlutsParser<PhlutsCircleAvatar> {
  const PhlutsCircleAvatarParser();

  @override
  String get type => WidgetType.circleAvatar.name;

  @override
  PhlutsCircleAvatar getModel(Map<String, dynamic> json) =>
      PhlutsCircleAvatar.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsCircleAvatar model) {
    return CircleAvatar(
      backgroundColor: model.backgroundColor.toColor(context),
      backgroundImage: model.backgroundImage != null
          ? NetworkImage(model.backgroundImage!)
          : null,
      foregroundImage: model.foregroundImage != null
          ? NetworkImage(model.foregroundImage!)
          : null,
      foregroundColor: model.foregroundColor.toColor(context),
      radius: model.radius,
      minRadius: model.minRadius,
      maxRadius: model.maxRadius,
      child: model.child?.parse(context),
    );
  }
}
