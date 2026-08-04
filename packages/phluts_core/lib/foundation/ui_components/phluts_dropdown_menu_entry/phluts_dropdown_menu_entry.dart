import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/theme/phluts_button_style/phluts_button_style.dart';

part 'phluts_dropdown_menu_entry.g.dart';

/// Configuration for a single entry in a [DropdownMenu].
@JsonSerializable()
class PhlutsDropdownMenuEntry extends PhlutsElement {
  /// Creates a [PhlutsDropdownMenuEntry].
  const PhlutsDropdownMenuEntry({
    this.value,
    this.label = '',
    this.labelWidget,
    this.leadingIcon,
    this.trailingIcon,
    this.enabled,
    this.style,
  });

  /// The underlying value represented by this entry.
  final dynamic value;

  /// The text label for this entry.
  final String label;

  /// A custom label widget.
  final PhlutsWidget? labelWidget;

  /// An icon displayed before the label.
  final PhlutsWidget? leadingIcon;

  /// An icon displayed after the label.
  final PhlutsWidget? trailingIcon;

  /// Whether this entry is enabled.
  final bool? enabled;

  /// Optional style applied to this entry.
  final PhlutsButtonStyle? style;

  /// Creates a [PhlutsDropdownMenuEntry] from JSON.
  factory PhlutsDropdownMenuEntry.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDropdownMenuEntryFromJson(json);

  /// Converts this entry to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsDropdownMenuEntryToJson(this);
}
