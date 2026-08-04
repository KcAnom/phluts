import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/foundation/specifications/action_type.dart';

part 'phluts_delay_action.g.dart';

/// Simple delay action that waits for a number of milliseconds.
///
/// Defaults are applied in the parser; the model accepts a nullable value.
///
/// Dart example:
/// ```dart
/// const PhlutsDelayAction(milliseconds: 500);
/// ```
///
/// JSON example:
/// ```json
/// { "actionType": "delay", "milliseconds": 500 }
/// ```
@JsonSerializable()
class PhlutsDelayAction extends PhlutsAction {
  /// Creates a [PhlutsDelayAction] that waits for a specified duration.
  const PhlutsDelayAction({this.milliseconds});

  /// Delay in milliseconds to wait.
  ///
  /// Type: `int?` (defaults applied in parser).
  final int? milliseconds;

  /// Action type identifier.
  @override
  String get actionType => ActionType.delay.name;

  /// Creates a `PhlutsDelayAction` from JSON.
  factory PhlutsDelayAction.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDelayActionFromJson(json);

  /// Converts this action to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsDelayActionToJson(this);
}
