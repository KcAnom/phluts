import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/actions/snack_bar/phluts_snack_bar_action.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/foundation/animation/phluts_duration/phluts_duration.dart';
import 'package:phluts_core/foundation/borders/phluts_shape_border/phluts_shape_border.dart';
import 'package:phluts_core/foundation/geometry/phluts_edge_insets/phluts_edge_insets.dart';
import 'package:phluts_core/foundation/interaction/phluts_hit_test_behavior.dart';
import 'package:phluts_core/foundation/layout/phluts_clip.dart';
import 'package:phluts_core/foundation/specifications/action_type.dart';
import 'package:phluts_core/foundation/ui_components/phluts_dismiss_direction.dart';
import 'package:phluts_core/foundation/ui_components/phluts_snack_bar_behavior.dart';

part 'phluts_snack_bar.g.dart';

/// Core model for the SnackBar action.
///
/// Shows a Flutter `SnackBar` built from PHLUTS JSON. Use with
/// `PhlutsSnackBarParser` to render at runtime.
///
/// Dart example:
/// ```dart
/// const PhlutsSnackBar(
///   content: {"type": "text", "data": {"text": "Saved"}},
///   behavior: PhlutsSnackBarBehavior.floating,
/// );
/// ```
///
/// JSON example:
/// ```json
/// {
///   "actionType": "showSnackBar",
///   "content": {"type": "text", "data": {"text": "Saved"}},
///   "behavior": "floating"
/// }
/// ```
@JsonSerializable()
class PhlutsSnackBar extends PhlutsAction {
  /// Creates a [PhlutsSnackBar] that shows a snack bar.
  const PhlutsSnackBar({
    required this.content,
    this.backgroundColor,
    this.elevation,
    this.margin,
    this.padding,
    this.width,
    this.shape,
    this.hitTestBehavior,
    this.behavior,
    this.action,
    this.actionOverflowThreshold,
    this.showCloseIcon,
    this.closeIconColor,
    this.duration,
    this.onVisible,
    this.dismissDirection,
    this.clipBehavior,
  });

  /// Widget JSON rendered inside the SnackBar.
  ///
  /// Type: `Map<String, dynamic>`.
  final Map<String, dynamic> content;

  /// Background color hex.
  ///
  /// Type: `String?`.
  final String? backgroundColor;

  /// Elevation of the SnackBar.
  ///
  /// Type: `double?`.
  final double? elevation;

  /// Outer margin.
  ///
  /// Type: `PhlutsEdgeInsets?`.
  final PhlutsEdgeInsets? margin;

  /// Inner padding.
  ///
  /// Type: `PhlutsEdgeInsets?`.
  final PhlutsEdgeInsets? padding;

  /// Fixed width.
  ///
  /// Type: `double?`.
  final double? width;

  /// Shape border for the SnackBar.
  ///
  /// Type: `PhlutsShapeBorder?`.
  final PhlutsShapeBorder? shape;

  /// Hit test behavior.
  ///
  /// Type: `PhlutsHitTestBehavior?`.
  final PhlutsHitTestBehavior? hitTestBehavior;

  /// Behavior: fixed or floating.
  ///
  /// Type: `PhlutsSnackBarBehavior?`.
  final PhlutsSnackBarBehavior? behavior;

  /// Optional action button.
  ///
  /// Type: `PhlutsSnackBarAction?`.
  final PhlutsSnackBarAction? action;

  /// Threshold for overflowing actions.
  ///
  /// Type: `double?`.
  final double? actionOverflowThreshold;

  /// Whether to show the close icon.
  ///
  /// Type: `bool?`.
  final bool? showCloseIcon;

  /// Close icon color.
  ///
  /// Type: `String?`.
  final String? closeIconColor;

  /// Display duration.
  ///
  /// Type: `PhlutsDuration?`.
  final PhlutsDuration? duration;

  /// Callback action when SnackBar becomes visible.
  ///
  /// Type: `Map<String, dynamic>?`.
  final Map<String, dynamic>? onVisible;

  /// Dismiss direction.
  ///
  /// Type: `PhlutsDismissDirection?`.
  final PhlutsDismissDirection? dismissDirection;

  /// Clip behavior.
  ///
  /// Type: `PhlutsClip?`.
  final PhlutsClip? clipBehavior;

  /// Unique action type string used for routing.
  @override
  String get actionType => ActionType.showSnackBar.name;

  /// Creates a `PhlutsSnackBar` from JSON.
  factory PhlutsSnackBar.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSnackBarFromJson(json);

  /// Converts this action to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSnackBarToJson(this);
}

// uses types from phluts_core/types
