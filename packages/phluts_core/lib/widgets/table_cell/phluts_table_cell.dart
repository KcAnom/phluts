import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_table_cell.g.dart';

/// Vertical alignment options for table cells.
///
/// Mirrors Flutter's `TableCellVerticalAlignment` and controls how the child of
/// a table cell is positioned vertically within the row height.
enum PhlutsTableCellVerticalAlignment {
  /// Align at the top of the row.
  top,

  /// Center vertically within the row.
  middle,

  /// Align at the bottom of the row.
  bottom,

  /// Align the baselines of text for the row.
  baseline,

  /// Expand to fill the full height of the row.
  fill,
}

/// A Phluts model representing Flutter's [TableCell] widget.
@JsonSerializable()
class PhlutsTableCell extends PhlutsWidget {
  /// Creates a [PhlutsTableCell] with the given properties.
  const PhlutsTableCell({this.verticalAlignment, this.child});

  /// How the child should be aligned vertically within the cell.
  final PhlutsTableCellVerticalAlignment? verticalAlignment;

  /// The widget inside the table cell.
  final PhlutsWidget? child;

  @override
  String get type => WidgetType.tableCell.name;

  /// Creates a [PhlutsTableCell] from a JSON map.
  factory PhlutsTableCell.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTableCellFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsTableCellToJson(this);
}
