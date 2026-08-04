import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';
import 'package:phluts_core/widgets/table_cell/phluts_table_cell.dart';
import 'package:phluts_core/widgets/table_row/phluts_table_row.dart';

part 'phluts_table.g.dart';

/// A Phluts model representing Flutter's [Table] widget.
///
/// Displays its children in rows and columns. Configure column widths,
/// borders, alignment, and text baseline.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsTable(
///   children: [
///     PhlutsTableRow(children: [
///       PhlutsText(data: 'A'),
///       PhlutsText(data: 'B'),
///     ]),
///     PhlutsTableRow(children: [
///       PhlutsText(data: 'C'),
///       PhlutsText(data: 'D'),
///     ]),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "table",
///   "children": [
///     {"children": [{"type": "text", "data": "A"}, {"type": "text", "data": "B"}]},
///     {"children": [{"type": "text", "data": "C"}, {"type": "text", "data": "D"}]}
///   ]
/// }
/// ```
/// {@end-tool}
///
/// See Flutter docs: `https://api.flutter.dev/flutter/widgets/Table-class.html`
///
@JsonSerializable()
class PhlutsTable extends PhlutsWidget {
  /// Creates a table widget with the specified properties.
  const PhlutsTable({
    this.children = const <PhlutsTableRow>[],
    this.columnWidths,
    this.defaultColumnWidth,
    this.textDirection,
    this.border,
    this.defaultVerticalAlignment,
    this.textBaseline,
  });

  /// The table rows.
  final List<PhlutsTableRow> children;

  /// Per-column width configuration.
  final Map<int, PhlutsTableColumnWidth>? columnWidths;

  /// Default width configuration for columns without explicit config.
  final PhlutsTableColumnWidth? defaultColumnWidth;

  /// Text direction used to interpret start/end in the table.
  final PhlutsTextDirection? textDirection;

  /// Border drawn around and inside the table.
  final PhlutsTableBorder? border;

  /// Default vertical alignment for cells.
  final PhlutsTableCellVerticalAlignment? defaultVerticalAlignment;

  /// Text baseline used when aligning on baselines.
  final PhlutsTextBaseline? textBaseline;

  @override
  /// Widget type identifier.
  String get type => WidgetType.table.name;

  /// Creates a [PhlutsTable] from a JSON map.
  factory PhlutsTable.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTableFromJson(json);

  @override
  /// Converts this [PhlutsTable] instance to a JSON map.
  Map<String, dynamic> toJson() => _$PhlutsTableToJson(this);
}
