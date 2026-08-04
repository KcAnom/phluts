import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/borders/phluts_shape_border_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsCardParser extends PhlutsParser<PhlutsCard> {
  const PhlutsCardParser();

  @override
  String get type => WidgetType.card.name;

  @override
  PhlutsCard getModel(Map<String, dynamic> json) => PhlutsCard.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsCard model) {
    return Card(
      color: model.color?.toColor(context),
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      elevation: model.elevation,
      shape: model.shape?.parse(context),
      borderOnForeground: model.borderOnForeground ?? true,
      clipBehavior: model.clipBehavior?.parse,
      semanticContainer: model.semanticContainer ?? true,
      margin: model.margin?.parse,
      child: model.child?.parse(context),
    );
  }
}
