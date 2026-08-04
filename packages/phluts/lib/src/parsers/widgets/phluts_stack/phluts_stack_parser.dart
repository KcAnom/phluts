import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_alignment_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_stack_fit_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_direction_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsStackParser extends PhlutsParser<PhlutsStack> {
  const PhlutsStackParser();

  @override
  PhlutsStack getModel(Map<String, dynamic> json) => PhlutsStack.fromJson(json);

  @override
  String get type => WidgetType.stack.name;

  @override
  Widget parse(BuildContext context, PhlutsStack model) {
    return Stack(
      alignment: model.alignment?.parse ?? AlignmentDirectional.topStart,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      fit: model.fit?.parse ?? StackFit.loose,
      textDirection: model.textDirection?.parse,
      children: model.children?.parseList(context) ?? [],
    );
  }
}
