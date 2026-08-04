import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/specifications/action_type.dart';

part 'phluts_snack_bar_action.g.dart';

/// Action button configuration for a SnackBar.
///
/// Mirrors Flutter's `SnackBarAction` while keeping model types in core.
///
/// Dart example:
/// ```dart
/// const PhlutsSnackBarAction(
///   label: 'Retry',
///   onPressed: PhlutsNetworkRequest(url: 'https://api.example.com/retry'),
/// );
/// ```
///
/// JSON example:
/// ```json
/// {
///   "label": "Retry",
///   "onPressed": { "actionType": "networkRequest", "url": "https://api.example.com/retry" },
///   "textColor": "#FFFFFFFF"
/// }
/// ```
@JsonSerializable()
class PhlutsSnackBarAction extends PhlutsAction {
  /// Creates a [PhlutsSnackBarAction] that shows a snack bar action.
  const PhlutsSnackBarAction({
    this.textColor,
    this.disabledTextColor,
    this.backgroundColor,
    this.disabledBackgroundColor,
    required this.label,
    required this.onPressed,
  });

  /// Text color for the action label.
  ///
  /// Type: `String?` (hex color).
  final String? textColor;

  /// Text color when the action is disabled.
  ///
  /// Type: `String?` (hex color).
  final String? disabledTextColor;

  /// Background color for the action button.
  ///
  /// Type: `String?` (hex color).
  final String? backgroundColor;

  /// Background color when the action is disabled.
  ///
  /// Type: `String?` (hex color).
  final String? disabledBackgroundColor;

  /// Visible label for the action button.
  ///
  /// Type: `String`.
  final String label;

  /// Action to invoke when the button is pressed.
  ///
  /// Type: `PhlutsAction?` (serialized with `toJson`).
  final PhlutsAction? onPressed;

  /// Unique action type string used for routing.
  @override
  String get actionType => ActionType.showSnackBar.name;

  /// Creates a `PhlutsSnackBarAction` from JSON.
  ///
  /// Type: `factory PhlutsSnackBarAction.fromJson(Map<String, dynamic> json)`.
  factory PhlutsSnackBarAction.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSnackBarActionFromJson(json);

  /// Converts this action to JSON.
  ///
  /// Type: `Map<String, dynamic> toJson()`.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSnackBarActionToJson(this);
}
