import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/decoration/phluts_box_decoration_parser.dart';
import 'package:phluts_core/phluts_core.dart';

/// Parses a [PhlutsTableRow] to a Flutter [TableRow].
extension PhlutsTableRowParser on PhlutsTableRow {
  TableRow parse(BuildContext context) {
    return TableRow(
      decoration: decoration?.parse(context),
      children: children.parseList(context) ?? const <Widget>[],
    );
  }
}
