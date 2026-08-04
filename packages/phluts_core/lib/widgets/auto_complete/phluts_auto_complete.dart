import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_auto_complete.g.dart';

/// A Phluts model representing Flutter's [Autocomplete] widget.
///
/// Provides a text field that displays a list of options while the user types.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsAutoComplete(
///   options: ['Apple', 'Banana', 'Cherry'],
///   optionsMaxHeight: 250,
///   optionsViewOpenDirection: PhlutsOptionsViewOpenDirection.up,
///   initialValue: 'Apple',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "autoComplete",
///   "options": ["Apple", "Banana", "Cherry"],
///   "onSelected": {"type": "callback", "name": "onOptionSelected"},
///   "optionsMaxHeight": 250,
///   "optionsViewOpenDirection": "up",
///   "initialValue": "Apple"
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [Autocomplete documentation](https://api.flutter.dev/flutter/material/Autocomplete-class.html)
@JsonSerializable()
class PhlutsAutoComplete extends PhlutsWidget {
  /// Creates a [PhlutsAutoComplete] with the given properties.
  const PhlutsAutoComplete({
    required this.options,
    this.onSelected,
    this.optionsMaxHeight,
    this.optionsViewOpenDirection,
    this.initialValue,
  });

  /// The list of options available for selection.
  final List<String> options;

  /// The callback that is called when an option is selected.
  final PhlutsAction? onSelected;

  /// The maximum height of the options list.
  /// Defaults to 200 in Flutter's [Autocomplete].
  @DoubleConverter()
  final double? optionsMaxHeight;

  /// The direction in which the options view opens.
  /// Defaults to [PhlutsOptionsViewOpenDirection.down].
  final PhlutsOptionsViewOpenDirection? optionsViewOpenDirection;

  /// The initial value of the autocomplete field.
  final String? initialValue;

  /// Widget type identifier.
  @override
  String get type => WidgetType.autocomplete.name;

  /// Creates a [PhlutsAutoComplete] from a JSON map.
  factory PhlutsAutoComplete.fromJson(Map<String, dynamic> json) =>
      _$PhlutsAutoCompleteFromJson(json);

  /// Converts this [PhlutsAutoComplete] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsAutoCompleteToJson(this);
}
