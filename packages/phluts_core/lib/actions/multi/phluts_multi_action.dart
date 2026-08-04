import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/foundation/specifications/action_type.dart';

part 'phluts_multi_action.g.dart';

/// Executes multiple actions sequentially or concurrently.
///
/// If `sync` is true, actions are awaited one-by-one; otherwise they are
/// fired without awaiting.
///
/// Dart example:
/// ```dart
/// PhlutsMultiAction(
///   actions: [
///     const PhlutsSetValueAction(values: [{"key": "a", "value": 1}]),
///     const PhlutsNetworkRequest(url: 'https://api.example.com')
///   ],
///   sync: true,
/// );
/// ```
///
/// JSON example:
/// ```json
/// {
///   "actionType": "multiAction",
///   "actions": [
///     {"actionType": "setValue", "values": [{"key": "a", "value": 1}]},
///     {"actionType": "networkRequest", "url": "https://api.example.com"}
///   ],
///   "sync": true
/// }
/// ```
@JsonSerializable()
class PhlutsMultiAction extends PhlutsAction {
  /// Creates a [PhlutsMultiAction] that executes multiple actions.
  const PhlutsMultiAction({required this.actions, this.sync = false});

  /// List of child actions to execute.
  ///
  /// Type: `List<PhlutsAction>?`.
  final List<PhlutsAction>? actions;

  /// Whether to execute actions synchronously.
  ///
  /// Type: `bool`.
  final bool sync;

  @override
  String get actionType => ActionType.multiAction.name;

  /// Creates a `PhlutsMultiAction` from JSON.
  factory PhlutsMultiAction.fromJson(Map<String, dynamic> json) =>
      _$PhlutsMultiActionFromJson(json);

  /// Converts this action to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsMultiActionToJson(this);
}
