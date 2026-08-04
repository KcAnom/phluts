import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_dropdown_menu.g.dart';

/// A Phluts model representing Flutter's [DropdownMenu] widget.
///
/// Shows a Material dropdown with a text field and selectable entries.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsDropdownMenu(
///   enabled: true,
///   hintText: 'Select an item',
///   dropdownMenuEntries: [
///     PhlutsDropdownMenuEntry(label: 'One', value: '1'),
///     PhlutsDropdownMenuEntry(label: 'Two', value: '2'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "dropdownMenu",
///   "hintText": "Select an item",
///   "dropdownMenuEntries": [
///     {"label": "One", "value": "1"},
///     {"label": "Two", "value": "2"}
///   ]
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [DropdownMenu documentation](https://api.flutter.dev/flutter/material/DropdownMenu-class.html)
@JsonSerializable()
class PhlutsDropdownMenu extends PhlutsWidget {
  /// Creates a [PhlutsDropdownMenu].
  const PhlutsDropdownMenu({
    this.enabled,
    this.width,
    this.menuHeight,
    this.leadingIcon,
    this.trailingIcon,
    this.label,
    this.hintText,
    this.helperText,
    this.errorText,
    this.selectedTrailingIcon,
    this.enableFilter,
    this.enableSearch,
    this.keyboardType,
    this.textStyle,
    this.textAlign,
    this.inputDecorationTheme,
    this.inputFormatters,
    this.alignmentOffset,
    this.expandedInsets,
    this.requestFocusOnTap,
    this.initialSelection,
    this.dropdownMenuEntries,
    this.closeBehavior,
  });

  /// Whether the dropdown is interactive.
  final bool? enabled;

  /// The width of the dropdown.
  @DoubleConverter()
  final double? width;

  /// The maximum height of the menu overlay.
  @DoubleConverter()
  final double? menuHeight;

  /// Leading icon widget.
  final PhlutsWidget? leadingIcon;

  /// Trailing icon widget.
  final PhlutsWidget? trailingIcon;

  /// Optional label widget.
  final PhlutsWidget? label;

  /// Hint text shown inside the field when it is empty.
  final String? hintText;

  /// Helper text displayed below the field.
  final String? helperText;

  /// Error text displayed below the field.
  final String? errorText;

  /// Icon shown when an item is selected.
  final PhlutsWidget? selectedTrailingIcon;

  /// Whether to enable client-side filtering.
  final bool? enableFilter;

  /// Whether to show a search field for filtering.
  final bool? enableSearch;

  /// Keyboard type for the text field.
  final PhlutsTextInputType? keyboardType;

  /// Text style for the input value.
  final PhlutsTextStyle? textStyle;

  /// How the text should be aligned horizontally.
  final PhlutsTextAlign? textAlign;

  /// Input decoration theme.
  final PhlutsInputDecorationTheme? inputDecorationTheme;

  /// Input formatters to apply to user input.
  final List<PhlutsInputFormatter>? inputFormatters;

  /// Offset applied to align menu overlay.
  final PhlutsOffset? alignmentOffset;

  /// Insets to apply when expanded.
  final PhlutsEdgeInsets? expandedInsets;

  /// Whether the field should request focus on tap.
  final bool? requestFocusOnTap;

  /// The initial selected value.
  final dynamic initialSelection;

  /// Entries to display in the dropdown.
  final List<PhlutsDropdownMenuEntry>? dropdownMenuEntries;

  /// Close behavior for the menu.
  final PhlutsDropdownMenuCloseBehavior? closeBehavior;

  /// Widget type identifier.
  @override
  String get type => WidgetType.dropdownMenu.name;

  /// Creates a [PhlutsDropdownMenu] from a JSON map.
  factory PhlutsDropdownMenu.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDropdownMenuFromJson(json);

  /// Converts this [PhlutsDropdownMenu] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsDropdownMenuToJson(this);
}
