import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';

part 'phluts_input_formatter.g.dart';

/// A Phluts model representing a text input formatter rule.
///
/// Used by inputs like `TextFormField` to restrict or allow characters
/// as the user types.
@JsonSerializable()
class PhlutsInputFormatter extends PhlutsElement {
  /// Creates an input formatter with the specified type and optional rule.
  const PhlutsInputFormatter({required this.type, this.rule, this.mask});

  /// Formatter behavior: allow or deny based on a regular expression rule.
  final PhlutsInputFormatterType type;

  /// Regular expression string used by the formatter.
  final String? rule;

  /// Input mask used when [type] is [PhlutsInputFormatterType.mask].
  ///
  /// `#` positions consume characters that match [rule]. All other characters
  /// are inserted as fixed separators.
  final String? mask;

  /// Creates a [PhlutsInputFormatter] from a JSON map.
  factory PhlutsInputFormatter.fromJson(Map<String, dynamic> json) =>
      _$PhlutsInputFormatterFromJson(json);

  /// Converts this [PhlutsInputFormatter] to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsInputFormatterToJson(this);
}

/// Input formatter behavior types for text field validation.
///
/// Mirrors the behavior of `InputFormatterType` used by platform formatters.
/// Determines whether characters matching a regex pattern should be allowed or denied.
enum PhlutsInputFormatterType {
  /// Allow characters that match the provided regex [rule].
  allow,

  /// Deny characters that match the provided regex [rule].
  deny,

  /// Apply a simple input mask. `#` consumes allowed input characters.
  mask,
}
