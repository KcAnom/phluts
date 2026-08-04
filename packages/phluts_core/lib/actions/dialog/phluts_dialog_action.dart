import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/actions/network_request/phluts_network_request.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/foundation/specifications/action_type.dart';
import 'package:phluts_core/foundation/ui_components/phluts_traversal_edge_behavior.dart';

part 'phluts_dialog_action.g.dart';

/// Core model for the "showDialog" action.
///
/// Presents a dialog built from PHLUTS JSON. Defaults for dismissibility and
/// safe area are applied in the parser, not in this model.
///
/// Dart example:
/// ```dart
/// const PhlutsDialogAction(
///   assetPath: 'assets/dialog.json',
/// );
/// ```
///
/// JSON example:
/// ```json
/// {
///   "actionType": "showDialog",
///   "widget": {"type": "text", "data": {"text": "Title"}}
/// }
/// ```
@JsonSerializable()
class PhlutsDialogAction extends PhlutsAction {
  /// Creates a [PhlutsDialogAction] that shows a dialog.
  const PhlutsDialogAction({
    this.widget,
    this.request,
    this.assetPath,
    this.barrierDismissible,
    this.barrierColor,
    this.barrierLabel,
    this.useSafeArea,
    this.traversalEdgeBehavior,
  });

  /// Dialog content widget JSON.
  ///
  /// Type: `Map<String, dynamic>?`.
  final Map<String, dynamic>? widget;

  /// Network request to fetch dialog widget JSON.
  ///
  /// Type: `PhlutsNetworkRequest?`.
  final PhlutsNetworkRequest? request;

  /// Asset path to dialog widget JSON.
  ///
  /// Type: `String?`.
  final String? assetPath;

  /// Whether tapping the barrier dismisses the dialog.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? barrierDismissible;

  /// Barrier color hex string.
  ///
  /// Type: `String?`.
  final String? barrierColor;

  /// Semantics label for barrier.
  ///
  /// Type: `String?`.
  final String? barrierLabel;

  /// Whether to use safe area for the dialog.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? useSafeArea;

  /// Traversal behavior for focus traversal at edges.
  ///
  /// Type: `PhlutsDialogTraversalEdgeBehavior?`.
  final PhlutsTraversalEdgeBehavior? traversalEdgeBehavior;

  /// Unique action type string used for routing.
  @override
  String get actionType => ActionType.showDialog.name;

  /// Creates a `PhlutsDialogAction` from JSON.
  factory PhlutsDialogAction.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDialogActionFromJson(json);

  /// Converts this action to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsDialogActionToJson(this);
}
