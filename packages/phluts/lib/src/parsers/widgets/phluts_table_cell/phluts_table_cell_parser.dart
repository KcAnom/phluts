import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_table_cell_vertical_alignment_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsTableCellParser extends PhlutsParser<PhlutsTableCell> {
  const PhlutsTableCellParser();

  @override
  String get type => WidgetType.tableCell.name;

  @override
  PhlutsTableCell getModel(Map<String, dynamic> json) =>
      PhlutsTableCell.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsTableCell model) {
    return TableCell(
      verticalAlignment: model.verticalAlignment?.parse,
      child: model.child?.parse(context) ?? const SizedBox(),
    );
  }
}
