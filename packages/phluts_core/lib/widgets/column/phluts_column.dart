import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_column.g.dart';

/// A Phluts model representing Flutter's [Column] widget.
///
/// Lays out its [children] in a vertical array. You can control how the
/// children are laid out along the main axis and the cross axis via
/// [mainAxisAlignment], [mainAxisSize], and [crossAxisAlignment].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsColumn(
///   spacing: 8,
///   mainAxisAlignment: PhlutsMainAxisAlignment.center,
///   children: const [
///     PhlutsText(data: 'One'),
///     PhlutsText(data: 'Two'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "column",
///   "spacing": 8,
///   "mainAxisAlignment": "center",
///   "children": [
///     {"type": "text", "data": "One"},
///     {"type": "text", "data": "Two"}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsColumn extends PhlutsWidget {
  /// Creates a column widget with optional alignment and children.
  const PhlutsColumn({
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
    this.spacing,
    this.children,
  });

  /// How the children should be placed along the vertical (main) axis.
  ///
  /// Type: [PhlutsMainAxisAlignment]
  final PhlutsMainAxisAlignment? mainAxisAlignment;

  /// How much space should be occupied in the vertical direction.
  ///
  /// Type: [PhlutsMainAxisSize]
  final PhlutsMainAxisSize? mainAxisSize;

  /// How the children should be placed along the horizontal (cross) axis.
  ///
  /// Type: [PhlutsCrossAxisAlignment]
  final PhlutsCrossAxisAlignment? crossAxisAlignment;

  /// The text direction to use for resolving alignment.
  ///
  /// Type: [PhlutsTextDirection]
  final PhlutsTextDirection? textDirection;

  /// The vertical direction in which children are ordered.
  ///
  /// Type: [PhlutsVerticalDirection]
  final PhlutsVerticalDirection? verticalDirection;

  /// The baseline to use for aligning text.
  ///
  /// Type: [PhlutsTextBaseline]
  final PhlutsTextBaseline? textBaseline;

  /// The space to insert between adjacent [children].
  ///
  /// When provided, a fixed gap of this size is applied between items.
  @DoubleConverter()
  final double? spacing;

  /// The list of widgets arranged vertically.
  final List<PhlutsWidget>? children;

  @override
  String get type => WidgetType.column.name;

  /// Creates a [PhlutsColumn] from a JSON map.
  factory PhlutsColumn.fromJson(Map<String, dynamic> json) =>
      _$PhlutsColumnFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsColumnToJson(this);
}
