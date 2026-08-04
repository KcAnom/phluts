import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/borders/phluts_border/phluts_border.dart';
import 'package:phluts_core/foundation/borders/phluts_border_radius/phluts_border_radius.dart';

part 'phluts_table_border.g.dart';

/// A Phluts model describing the border to paint around a `Table`.
///
/// This model intentionally avoids setting defaults. Consumers should provide
/// defaults in their parse extensions to keep model definitions declarative.
@JsonSerializable()
class PhlutsTableBorder extends PhlutsElement {
  /// Creates a [PhlutsTableBorder].
  const PhlutsTableBorder({
    this.color,
    @DoubleConverter() this.width,
    this.style,
    this.borderRadius,
  });

  /// Border color as hex or named color.
  final String? color;

  /// Border stroke width in logical pixels.
  @DoubleConverter()
  final double? width;

  /// Border style (e.g., solid or none).
  final PhlutsBorderStyle? style;

  /// Corner radii for rounded borders.
  final PhlutsBorderRadius? borderRadius;

  /// Creates a [PhlutsTableBorder] from a JSON map.
  factory PhlutsTableBorder.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTableBorderFromJson(json);

  @override
  /// Converts this [PhlutsTableBorder] to a JSON map.
  Map<String, dynamic> toJson() => _$PhlutsTableBorderToJson(this);
}
