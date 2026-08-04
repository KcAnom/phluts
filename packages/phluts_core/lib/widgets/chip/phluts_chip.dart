import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_chip.g.dart';

/// A Phluts model representing Flutter's [Chip] widget.
///
/// Displays a compact element with an optional avatar, label, and delete icon.
/// Supports styling via colors, padding, shape, and density.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsChip(
///   label: PhlutsText(data: 'Chip'),
///   avatar: PhlutsIcon(icon: 'person'),
///   deleteIcon: PhlutsIcon(icon: 'close'),
///   deleteIconColor: PhlutsColors.red,
///   color: PhlutsColors.white,
///   backgroundColor: PhlutsColors.blue,
///   padding: PhlutsEdgeInsets.all(8.0),
///   elevation: 2.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "chip",
///   "label": { "type": "text", "data": "Chip" },
///   "avatar": { "type": "icon", "icon": "person" },
///   "deleteIcon": { "type": "icon", "icon": "close" },
///   "deleteIconColor": "#F44336",
///   "color": "#FFFFFF",
///   "backgroundColor": "#2196F3",
///   "padding": { "all": 8.0 },
///   "elevation": 2.0
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Chip documentation (`https://api.flutter.dev/flutter/material/Chip-class.html`)
@JsonSerializable(explicitToJson: true)
class PhlutsChip extends PhlutsWidget {
  /// Creates a [PhlutsChip].
  const PhlutsChip({
    this.avatar,
    required this.label,
    this.labelStyle,
    this.labelPadding,
    this.deleteIcon,
    this.onDeleted,
    this.deleteIconColor,
    this.deleteButtonTooltipMessage,
    this.side,
    this.shape,
    this.clipBehavior,
    this.autofocus,
    this.color,
    this.backgroundColor,
    this.padding,
    this.visualDensity,
    this.materialTapTargetSize,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.avatarBoxConstraints,
    this.deleteIconBoxConstraints,
  });

  /// Optional leading avatar widget.
  final PhlutsWidget? avatar;

  /// The primary label widget.
  final PhlutsWidget label;

  /// Text style for the label.
  final PhlutsTextStyle? labelStyle;

  /// Padding around the label.
  final PhlutsEdgeInsets? labelPadding;

  /// Optional delete icon widget.
  final PhlutsWidget? deleteIcon;

  /// Action to perform when the chip's delete button is pressed.
  final PhlutsAction? onDeleted;

  /// Color for the delete icon.
  final String? deleteIconColor;

  /// Tooltip for the delete button.
  final String? deleteButtonTooltipMessage;

  /// Border side of the chip.
  final PhlutsBorderSide? side;

  /// Shape of the chip.
  final PhlutsShapeBorder? shape;

  /// How to clip the content.
  final PhlutsClip? clipBehavior;

  /// Whether this widget should focus itself if nothing else is focused.
  final bool? autofocus;

  /// Foreground color for the chip's content.
  final String? color;

  /// Background color of the chip.
  final String? backgroundColor;

  /// Inner padding for the chip's content.
  final PhlutsEdgeInsets? padding;

  /// Visual density configuration.
  final PhlutsVisualDensity? visualDensity;

  /// Tap target size configuration.
  final PhlutsMaterialTapTargetSize? materialTapTargetSize;

  /// Elevation of the chip.
  @DoubleConverter()
  final double? elevation;

  /// Shadow color for the chip.
  final String? shadowColor;

  /// Surface tint color for the chip.
  final String? surfaceTintColor;

  /// Constraints for the avatar widget.
  final PhlutsBoxConstraints? avatarBoxConstraints;

  /// Constraints for the delete icon widget.
  final PhlutsBoxConstraints? deleteIconBoxConstraints;

  /// Widget type identifier.
  @override
  String get type => WidgetType.chip.name;

  /// Creates a [PhlutsChip] from a JSON map.
  factory PhlutsChip.fromJson(Map<String, dynamic> json) =>
      _$PhlutsChipFromJson(json);

  /// Converts this [PhlutsChip] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsChipToJson(this);
}
