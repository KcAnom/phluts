import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_alignment_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_box_fit_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsFittedBoxParser extends PhlutsParser<PhlutsFittedBox> {
  const PhlutsFittedBoxParser();

  @override
  String get type => WidgetType.fittedBox.name;

  @override
  PhlutsFittedBox getModel(Map<String, dynamic> json) =>
      PhlutsFittedBox.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsFittedBox model) {
    return FittedBox(
      fit: model.fit?.parse ?? BoxFit.contain,
      alignment: model.alignment?.parse ?? Alignment.center,
      clipBehavior: model.clipBehavior?.parse ?? Clip.none,
      child: model.child.parse(context),
    );
  }
}
