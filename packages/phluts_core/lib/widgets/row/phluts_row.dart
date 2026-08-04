import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_row.g.dart';

/// A Phluts widget that displays its children in a horizontal array.
///
/// This widget corresponds to Flutter's Row widget and arranges its
/// children horizontally. The main axis runs horizontally and the
/// cross axis runs vertically.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsRow(
///   mainAxisAlignment: PhlutsMainAxisAlignment.spaceBetween,
///   children: [
///     PhlutsText(data: 'Left'),
///     PhlutsText(data: 'Right'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "row",
///   "mainAxisAlignment": "spaceBetween",
///   "children": [
///     {"type": "text", "data": "Left"},
///     {"type": "text", "data": "Right"}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsRow extends PhlutsWidget {
  /// Creates a row widget with optional alignment and children.
  const PhlutsRow({
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
    this.spacing,
    this.children,
  });

  /// How the children should be placed along the main axis (horizontal).
  final PhlutsMainAxisAlignment? mainAxisAlignment;

  /// How much space should be occupied in the main axis.
  final PhlutsMainAxisSize? mainAxisSize;

  /// How the children should be placed along the cross axis (vertical).
  final PhlutsCrossAxisAlignment? crossAxisAlignment;

  /// The text direction to use for resolving alignment.
  final PhlutsTextDirection? textDirection;

  /// The order to lay children out vertically.
  final PhlutsVerticalDirection? verticalDirection;

  /// The baseline to use when aligning text.
  final PhlutsTextBaseline? textBaseline;

  /// The amount of space between each child.
  @DoubleConverter()
  final double? spacing;

  /// The widgets to display in this row.
  final List<PhlutsWidget>? children;

  @override
  String get type => WidgetType.row.name;

  /// Creates a [PhlutsRow] from a JSON map.
  factory PhlutsRow.fromJson(Map<String, dynamic> json) =>
      _$PhlutsRowFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsRowToJson(this);
}
