import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_cross_axis_alignment_parser.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_main_axis_alignment_parser.dart';
import 'package:phluts/src/parsers/foundation/alignment/phluts_main_axis_size_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_vertical_direction_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_direction_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsColumnParser extends PhlutsParser<PhlutsColumn> {
  const PhlutsColumnParser();

  @override
  PhlutsColumn getModel(Map<String, dynamic> json) => PhlutsColumn.fromJson(json);

  @override
  String get type => PhlutsColumn().type;

  @override
  Widget parse(BuildContext context, PhlutsColumn model) {
    return Column(
      mainAxisAlignment:
          model.mainAxisAlignment?.parse ?? MainAxisAlignment.start,
      crossAxisAlignment:
          model.crossAxisAlignment?.parse ?? CrossAxisAlignment.center,
      mainAxisSize: model.mainAxisSize?.parse ?? MainAxisSize.max,
      textDirection: model.textDirection?.parse,
      verticalDirection:
          model.verticalDirection?.parse ?? VerticalDirection.down,
      spacing: model.spacing ?? 0,
      children: model.children.parseList(context) ?? [],
    );
  }
}
