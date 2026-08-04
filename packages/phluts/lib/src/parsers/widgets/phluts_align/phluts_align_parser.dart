import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_alignment_directional_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsAlignParser extends PhlutsParser<PhlutsAlign> {
  const PhlutsAlignParser();

  @override
  String get type => WidgetType.align.name;

  @override
  PhlutsAlign getModel(Map<String, dynamic> json) => PhlutsAlign.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsAlign model) {
    return Align(
      alignment: model.alignment?.parse ?? Alignment.center,
      heightFactor: model.heightFactor,
      widthFactor: model.widthFactor,
      child: model.child?.parse(context),
    );
  }
}
