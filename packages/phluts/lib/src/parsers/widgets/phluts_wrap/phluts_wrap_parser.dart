import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_axis_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_vertical_direction_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_wrap_alignment_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_wrap_cross_alignment_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_direction_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsWrapParser extends PhlutsParser<PhlutsWrap> {
  const PhlutsWrapParser();

  @override
  String get type => WidgetType.wrap.name;

  @override
  PhlutsWrap getModel(Map<String, dynamic> json) => PhlutsWrap.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsWrap model) {
    return Wrap(
      direction: model.direction?.parse ?? Axis.horizontal,
      alignment: model.alignment?.parse ?? WrapAlignment.start,
      spacing: model.spacing ?? 0.0,
      runAlignment: model.runAlignment?.parse ?? WrapAlignment.start,
      runSpacing: model.runSpacing ?? 0.0,
      crossAxisAlignment:
          model.crossAxisAlignment?.parse ?? WrapCrossAlignment.start,
      textDirection: model.textDirection?.parse,
      verticalDirection:
          model.verticalDirection?.parse ?? VerticalDirection.down,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      children: model.children?.parseList(context) ?? const <Widget>[],
    );
  }
}
