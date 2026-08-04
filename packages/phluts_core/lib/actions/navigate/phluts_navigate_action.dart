import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/actions/network_request/phluts_network_request.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/foundation/specifications/action_type.dart';

part 'phluts_navigate_action.g.dart';

/// Navigation styles supported by [PhlutsNavigateAction].
///
/// These correspond to common Navigator operations in Flutter.
enum NavigationStyle {
  /// Push a new route onto the stack.
  push,

  /// Pop the current route.
  pop,

  /// Replace the current route by pushing a new one and disposing the previous.
  pushReplacement,

  /// Push a new route and remove all the previous routes.
  pushAndRemoveAll,

  /// Pop all routes until the first.
  popAll,

  /// Push a named route.
  pushNamed,

  /// Push a named route and remove all previous routes.
  pushNamedAndRemoveAll,

  /// Replace current route with a named route.
  pushReplacementNamed,
}

/// A Phluts action that performs navigation operations.
///
/// Can navigate using a local `widgetJson`, an `assetPath`, a `routeName`,
/// or a `request` that fetches the destination JSON. The [navigationStyle]
/// determines how the navigation is executed.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsNavigateAction(
///   routeName: '/details',
///   navigationStyle: NavigationStyle.pushNamed,
///   arguments: {'id': 42},
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "navigate",
///   "routeName": "/details",
///   "navigationStyle": "pushNamed",
///   "arguments": {"id": 42}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsNavigateAction extends PhlutsAction {
  /// Creates a [PhlutsNavigateAction] to navigate based on the provided inputs.
  const PhlutsNavigateAction({
    this.request,
    this.widgetJson,
    this.assetPath,
    this.routeName,
    this.navigationStyle,
    this.result,
    this.arguments,
  });

  /// Optional network request to load destination widget JSON.
  final PhlutsNetworkRequest? request;

  /// Inline widget JSON to navigate to.
  final Map<String, dynamic>? widgetJson;

  /// Asset path containing widget JSON to navigate to.
  final String? assetPath;

  /// Named route to push/pop.
  final String? routeName;

  /// How navigation should be performed.
  final NavigationStyle? navigationStyle;

  /// A result to pass back when popping.
  final Map<String, dynamic>? result;

  /// Arguments to pass to the new route.
  final Map<String, dynamic>? arguments;

  /// Action type identifier.
  @override
  String get actionType => ActionType.navigate.name;

  /// Creates a [PhlutsNavigateAction] from a JSON map.
  factory PhlutsNavigateAction.fromJson(Map<String, dynamic> json) =>
      _$PhlutsNavigateActionFromJson(json);

  /// Converts this [PhlutsNavigateAction] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsNavigateActionToJson(this);
}
