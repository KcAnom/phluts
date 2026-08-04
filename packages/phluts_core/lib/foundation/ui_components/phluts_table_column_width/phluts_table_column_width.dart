import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';

part 'phluts_table_column_width.g.dart';

/// Column width strategies supported by `Table`.
enum PhlutsTableColumnWidthType {
  /// Width is a fixed number of logical pixels.
  fixedColumnWidth,

  /// Width is a multiple of the remaining space (flex factor).
  flexColumnWidth,

  /// Width is a fraction of the total available width.
  fractionColumnWidth,

  /// Width is the intrinsic size of the column's contents.
  intrinsicColumnWidth,
}

/// Configuration describing a single column's width behavior.
///
/// The [value] meaning depends on [type]:
/// - fixed: pixel width
/// - flex: flex factor
/// - fraction: fraction 0..1
/// - intrinsic: flex used by IntrinsicColumnWidth
@JsonSerializable()
class PhlutsTableColumnWidth extends PhlutsElement {
  /// Creates a [PhlutsTableColumnWidth].
  const PhlutsTableColumnWidth({
    this.type = PhlutsTableColumnWidthType.flexColumnWidth,
    this.value,
  });

  /// Column width strategy.
  final PhlutsTableColumnWidthType type;

  /// Numeric value whose semantic depends on [type].
  @DoubleConverter()
  final double? value;

  /// Creates a [PhlutsTableColumnWidth] from a JSON map.
  factory PhlutsTableColumnWidth.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTableColumnWidthFromJson(json);

  @override
  /// Converts this [PhlutsTableColumnWidth] to a JSON map.
  Map<String, dynamic> toJson() => _$PhlutsTableColumnWidthToJson(this);
}
