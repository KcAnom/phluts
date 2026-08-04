import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_baseline_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_direction_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_table_border_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_table_cell_vertical_alignment_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_table_column_width_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_table_row_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsTableParser extends PhlutsParser<PhlutsTable> {
  const PhlutsTableParser();

  @override
  PhlutsTable getModel(Map<String, dynamic> json) => PhlutsTable.fromJson(json);

  @override
  String get type => WidgetType.table.name;

  @override
  Widget parse(BuildContext context, PhlutsTable model) {
    return Table(
      children: model.children.map((row) => row.parse(context)).toList(),
      columnWidths: model.columnWidths?.map(
        (key, value) => MapEntry(key, value.parse),
      ),
      defaultColumnWidth: model.defaultColumnWidth != null
          ? model.defaultColumnWidth!.parse
          : const FlexColumnWidth(),
      textDirection: model.textDirection?.parse,
      border: model.border != null
          ? PhlutsTableBorderParser(model.border!).parse(context)
          : null,
      defaultVerticalAlignment:
          model.defaultVerticalAlignment?.parse ??
          TableCellVerticalAlignment.top,
      textBaseline: model.textBaseline?.parse,
    );
  }
}
