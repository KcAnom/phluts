import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/decoration/phluts_box_decoration/phluts_box_decoration.dart';

part 'phluts_table_row.g.dart';

/// A single row in a `Table`.
///
/// Holds an optional [decoration] and a list of [children] to render in that
/// row. Each child typically corresponds to a `TableCell` or any widget.
@JsonSerializable()
class PhlutsTableRow extends PhlutsElement {
  /// Creates a [PhlutsTableRow].
  const PhlutsTableRow({this.decoration, this.children = const <PhlutsWidget>[]});

  /// Optional background decoration for the row.
  final PhlutsBoxDecoration? decoration;

  /// Widgets contained in this row.
  final List<PhlutsWidget> children;

  /// Creates a [PhlutsTableRow] from a JSON map.
  factory PhlutsTableRow.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTableRowFromJson(json);

  /// Converts this [PhlutsTableRow] to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsTableRowToJson(this);
}
