import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/foundation/specifications/action_type.dart';

part 'phluts_get_form_value.g.dart';

/// A Phluts action that retrieves the value of a specific form field.
///
/// This action extracts the current value from a form field identified by [id].
/// The retrieved value can be used by other actions or stored in the application
/// state for further processing.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsGetFormValue(
///   id: 'email_field',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "getFormValue",
///   "id": "email_field"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsGetFormValue extends PhlutsAction {
  /// Creates a [PhlutsGetFormValue] action to retrieve a form field value.
  const PhlutsGetFormValue({required this.id});

  /// The unique identifier of the form field to retrieve the value from.
  final String id;

  /// Action type identifier.
  @override
  String get actionType => ActionType.getFormValue.name;

  /// Creates a [PhlutsGetFormValue] from a JSON map.
  factory PhlutsGetFormValue.fromJson(Map<String, dynamic> json) =>
      _$PhlutsGetFormValueFromJson(json);

  /// Converts this [PhlutsGetFormValue] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsGetFormValueToJson(this);
}
