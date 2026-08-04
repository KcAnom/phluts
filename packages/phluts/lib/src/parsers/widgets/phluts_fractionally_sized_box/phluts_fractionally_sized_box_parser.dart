import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_alignment_parser.dart';

import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsFractionallySizedBoxParser
    extends PhlutsParser<PhlutsFractionallySizedBox> {
  const PhlutsFractionallySizedBoxParser();

  @override
  PhlutsFractionallySizedBox getModel(Map<String, dynamic> json) =>
      PhlutsFractionallySizedBox.fromJson(json);

  @override
  String get type => WidgetType.fractionallySizedBox.name;

  @override
  Widget parse(BuildContext context, PhlutsFractionallySizedBox model) {
    return FractionallySizedBox(
      alignment: model.alignment?.parse ?? Alignment.center,
      widthFactor: model.widthFactor,
      heightFactor: model.heightFactor,
      child: model.child.parse(context),
    );
  }
}
