import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/actions/network_request/phluts_network_request.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/borders/phluts_border/phluts_border.dart';
import 'package:phluts_core/foundation/geometry/phluts_box_constraints/phluts_box_constraints.dart';
import 'package:phluts_core/foundation/specifications/action_type.dart';

part 'phluts_modal_bottom_sheet_action.g.dart';

/// Core model for the "showModalBottomSheet" action.
///
/// Displays a Flutter `showModalBottomSheet` with content sourced from a PHLUTS
/// widget. Defaults (scroll control, dismissibility, etc.) are applied in the
/// parser, not the model.
///
/// Dart example:
/// ```dart
/// const PhlutsModalBottomSheetAction(
///   widget: PhlutsWidget.fromJson({"type": "text", "data": {"text": "Hello"}}),
/// );
/// ```
///
/// JSON example:
/// ```json
/// {
///   "actionType": "showModalBottomSheet",
///   "widget": {"type": "text", "data": {"text": "Hello"}}
/// }
/// ```
@JsonSerializable()
class PhlutsModalBottomSheetAction extends PhlutsAction {
  /// Creates a [PhlutsModalBottomSheetAction] that shows a modal bottom sheet.
  const PhlutsModalBottomSheetAction({
    this.widget,
    this.request,
    this.assetPath,
    this.backgroundColor,
    this.barrierLabel,
    this.elevation,
    this.shape,
    this.constraints,
    this.barrierColor,
    this.isScrollControlled,
    this.useRootNavigator,
    this.isDismissible,
    this.enableDrag,
    this.showDragHandle,
    this.useSafeArea,
  });

  /// Content widget to display inside the bottom sheet.
  ///
  /// Type: `PhlutsWidget?`.
  final PhlutsWidget? widget;

  /// Network request to fetch widget content.
  ///
  /// Type: `PhlutsNetworkRequest?`.
  final PhlutsNetworkRequest? request;

  /// Path to a local asset JSON for the widget.
  ///
  /// Type: `String?`.
  final String? assetPath;

  /// Background color hex for the sheet.
  ///
  /// Type: `String?`.
  final String? backgroundColor;

  /// Semantics label for the modal barrier.
  ///
  /// Type: `String?`.
  final String? barrierLabel;

  /// Elevation of the bottom sheet.
  ///
  /// Type: `double?`.
  final double? elevation;

  /// Shape border of the bottom sheet.
  ///
  /// Type: `PhlutsBorder?`.
  final PhlutsBorder? shape;

  /// Box constraints applied to the sheet.
  ///
  /// Type: `PhlutsBoxConstraints?`.
  final PhlutsBoxConstraints? constraints;

  /// Barrier color hex behind the sheet.
  ///
  /// Type: `String?`.
  final String? barrierColor;

  /// Whether the sheet can take full height when scrolled.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? isScrollControlled;

  /// Whether to use the root navigator.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? useRootNavigator;

  /// Whether the sheet is dismissible by tapping the barrier.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? isDismissible;

  /// Whether the sheet is draggable.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? enableDrag;

  /// Whether to show the drag handle.
  ///
  /// Type: `bool?`.
  final bool? showDragHandle;

  /// Whether to respect the safe area.
  ///
  /// Type: `bool?` (defaults applied in parser).
  final bool? useSafeArea;

  /// Unique action type string used for routing.
  @override
  String get actionType => ActionType.showModalBottomSheet.name;

  /// Creates a `PhlutsModalBottomSheetAction` from JSON.
  factory PhlutsModalBottomSheetAction.fromJson(Map<String, dynamic> json) =>
      _$PhlutsModalBottomSheetActionFromJson(json);

  /// Converts this action to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsModalBottomSheetActionToJson(this);
}
