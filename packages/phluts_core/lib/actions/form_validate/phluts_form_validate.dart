import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/foundation/specifications/action_type.dart';

part 'phluts_form_validate.g.dart';

/// A Phluts action that validates form data and executes conditional actions.
///
/// This action validates the current form state and executes different actions
/// based on whether the form is valid or not. Use [isValid] to specify the
/// action to execute when validation passes, and [isNotValid] for when it fails.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsFormValidate(
///   isValid: PhlutsNavigateAction(routeName: '/success'),
///   isNotValid: PhlutsSnackBarAction(message: 'Please fix errors'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "validateForm",
///   "isValid": {
///     "type": "navigate",
///     "routeName": "/success"
///   },
///   "isNotValid": {
///     "type": "showSnackBar",
///     "message": "Please fix errors"
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsFormValidate extends PhlutsAction {
  /// Creates a [PhlutsFormValidate] action with conditional execution.
  const PhlutsFormValidate({this.isValid, this.isNotValid});

  /// Action to execute when form validation passes.
  final PhlutsAction? isValid;

  /// Action to execute when form validation fails.
  final PhlutsAction? isNotValid;

  /// Action type identifier.
  @override
  String get actionType => ActionType.validateForm.name;

  /// Creates a [PhlutsFormValidate] from a JSON map.
  factory PhlutsFormValidate.fromJson(Map<String, dynamic> json) =>
      _$PhlutsFormValidateFromJson(json);

  /// Converts this [PhlutsFormValidate] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsFormValidateToJson(this);
}
