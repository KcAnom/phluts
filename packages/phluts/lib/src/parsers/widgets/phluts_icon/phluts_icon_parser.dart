import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/colors/phluts_blend_mode_parser.dart';
import 'package:phluts/src/parsers/foundation/effects/phluts_shadow_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_direction_parser.dart';
import 'package:phluts/src/utils/icon_utils.dart';
import 'package:phluts/src/utils/utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';
import 'package:phluts_logger/phluts_logger.dart';

class PhlutsIconParser extends PhlutsParser<PhlutsIcon> {
  const PhlutsIconParser();

  @override
  String get type => WidgetType.icon.name;

  @override
  PhlutsIcon getModel(Map<String, dynamic> json) => PhlutsIcon.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsIcon model) {
    IconData? iconData;
    switch (model.iconType) {
      case PhlutsIconType.material:
        iconData = materialIconMap[model.icon];
        break;
      case PhlutsIconType.cupertino:
        iconData = cupertinoIconsMap[model.icon];
        break;
    }

    if (iconData != null) {
      return Icon(
        iconData,
        size: model.size,
        fill: model.fill,
        weight: model.weight,
        grade: model.grade,
        opticalSize: model.opticalSize,
        color: model.color.toColor(context),
        shadows: model.shadows?.map((e) => e.parse(context)).toList(),
        semanticLabel: model.semanticLabel,
        textDirection: model.textDirection?.parse,
        applyTextScaling: model.applyTextScaling,
        blendMode: model.blendMode?.parse,
      );
    } else {
      Log.e("The Icon ${model.icon} does not exist.");
      return const SizedBox();
    }
  }
}
