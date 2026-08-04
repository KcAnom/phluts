import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_text_form_field.g.dart';

/// A Phluts model representing Flutter's [TextFormField] widget.
///
/// A convenience widget that wraps a [TextField] and integrates with form
/// validation and saving. Supports initial text, keyboard configuration,
/// cursor styling, decoration and more. Includes an optional `id` used by
/// higher-level form logic to store current field value.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsTextFormField(
///   id: 'email',
///   decoration: PhlutsInputDecoration(labelText: 'Email'),
///   keyboardType: PhlutsTextInputType.emailAddress,
///   autovalidateMode: PhlutsAutovalidateMode.onUserInteraction,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "textFormField",
///   "id": "email",
///   "decoration": {"labelText": "Email"},
///   "keyboardType": "emailAddress",
///   "autovalidateMode": "onUserInteraction"
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [TextFormField documentation](https://api.flutter.dev/flutter/material/TextFormField-class.html)
@JsonSerializable(explicitToJson: true)
class PhlutsTextFormField extends PhlutsWidget {
  /// Creates a text form field widget with the specified properties.
  const PhlutsTextFormField({
    this.id,
    this.decoration,
    this.initialValue,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization,
    this.style,
    this.textAlign,
    this.textDirection,
    this.readOnly,
    this.showCursor,
    this.autofocus,
    this.obscuringCharacter,
    this.maxLines,
    this.minLines,
    this.maxLength,
    this.obscureText,
    this.autocorrect,
    this.smartDashesType,
    this.smartQuotesType,
    this.maxLengthEnforcement,
    this.expands,
    this.keyboardAppearance,
    this.scrollPadding,
    this.restorationId,
    this.enableIMEPersonalizedLearning,
    this.enableSuggestions,
    this.enabled,
    this.cursorWidth,
    this.cursorHeight,
    this.cursorColor,
    this.autovalidateMode,
    this.inputFormatters,
    this.validatorRules,
  });

  /// Identifier used by the form scope to store/read this field's value.
  final String? id;

  /// Visual decoration and labeling for the text field.
  final PhlutsInputDecoration? decoration;

  /// Initial text to display in the field.
  final String? initialValue;

  /// Keyboard configuration.
  final PhlutsTextInputType? keyboardType;

  /// IME action button configuration.
  final PhlutsTextInputAction? textInputAction;

  /// Auto-capitalization behavior.
  final PhlutsTextCapitalization? textCapitalization;

  /// Text style for the input text.
  final PhlutsTextStyle? style;

  /// Horizontal text alignment.
  final PhlutsTextAlign? textAlign;

  /// Text direction.
  final PhlutsTextDirection? textDirection;

  /// Whether the field is read-only.
  final bool? readOnly;

  /// Whether to show the cursor.
  final bool? showCursor;

  /// Whether to focus automatically.
  final bool? autofocus;

  /// Character used when [obscureText] is true.
  final String? obscuringCharacter;

  /// Maximum lines.
  final int? maxLines;

  /// Minimum lines.
  final int? minLines;

  /// Maximum number of characters allowed.
  final int? maxLength;

  /// Obscure text (e.g., for passwords).
  final bool? obscureText;

  /// Whether to enable autocorrect.
  final bool? autocorrect;

  /// Smart dashes behavior.
  final PhlutsSmartDashesType? smartDashesType;

  /// Smart quotes behavior.
  final PhlutsSmartQuotesType? smartQuotesType;

  /// Max length enforcement strategy.
  final PhlutsMaxLengthEnforcement? maxLengthEnforcement;

  /// Expand to fill parent vertically.
  final bool? expands;

  /// Keyboard brightness.
  final PhlutsBrightness? keyboardAppearance;

  /// Scroll padding when ensuring visibility.
  final PhlutsEdgeInsets? scrollPadding;

  /// Restoration ID.
  final String? restorationId;

  /// Whether to enable personalized learning.
  final bool? enableIMEPersonalizedLearning;

  /// Whether to enable input suggestions.
  final bool? enableSuggestions;

  /// Whether the field is interactive.
  final bool? enabled;

  /// Width of the text cursor in logical pixels.
  @DoubleConverter()
  final double? cursorWidth;

  /// Height of the text cursor in logical pixels.
  @DoubleConverter()
  final double? cursorHeight;

  /// Color of the text cursor.
  final PhlutsColor? cursorColor;

  /// Autovalidation behavior.
  final PhlutsAutovalidateMode? autovalidateMode;

  /// Input text formatting rules applied as the user types.
  final List<PhlutsInputFormatter>? inputFormatters;

  /// Declarative validation rules for the form field.
  final List<PhlutsFormFieldValidator>? validatorRules;

  /// Widget type identifier.
  @override
  String get type => WidgetType.textFormField.name;

  /// Creates a [PhlutsTextFormField] from a JSON map.
  factory PhlutsTextFormField.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTextFormFieldFromJson(json);

  /// Converts this [PhlutsTextFormField] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsTextFormFieldToJson(this);
}
