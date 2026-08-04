import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/converters/double_converter.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_alert_dialog.g.dart';

/// A Phluts model representing Flutter's [AlertDialog] widget.
///
/// A Material Design dialog that informs the user about situations that require
/// acknowledgement. Includes optional title, content, and action buttons.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsAlertDialog(
///   title: PhlutsText(data: 'Confirm'),
///   content: PhlutsText(data: 'Proceed with action?'),
///   actions: [
///     PhlutsTextButton(child: PhlutsText(data: 'Cancel')),
///     PhlutsTextButton(child: PhlutsText(data: 'OK')),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "alertDialog",
///   "title": {"type": "text", "data": "Confirm"},
///   "content": {"type": "text", "data": "Proceed with action?"},
///   "actions": [
///     {"type": "textButton", "child": {"type": "text", "data": "Cancel"}},
///     {"type": "textButton", "child": {"type": "text", "data": "OK"}}
///   ]
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [AlertDialog documentation](https://api.flutter.dev/flutter/material/AlertDialog-class.html)
@JsonSerializable()
class PhlutsAlertDialog extends PhlutsWidget {
  /// Creates a [PhlutsAlertDialog] with the given properties.
  const PhlutsAlertDialog({
    this.icon,
    this.iconPadding,
    this.iconColor,
    this.title,
    this.titlePadding,
    this.titleTextStyle,
    this.content,
    this.contentPadding,
    this.contentTextStyle,
    this.actions,
    this.actionsPadding,
    this.actionsAlignment,
    this.actionsOverflowAlignment,
    this.actionsOverflowDirection,
    this.actionsOverflowButtonSpacing,
    this.buttonPadding,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.semanticLabel,
    this.insetPadding = const PhlutsEdgeInsets(
      left: 40,
      right: 40,
      top: 24,
      bottom: 24,
    ),
    this.clipBehavior,
    this.shape,
    this.alignment,
    this.scrollable,
  });

  /// Optional icon widget displayed above the title.
  final PhlutsWidget? icon;

  /// Padding around [icon].
  final PhlutsEdgeInsets? iconPadding;

  /// Color for the icon.
  final PhlutsColor? iconColor;

  /// The title of the dialog.
  final PhlutsWidget? title;

  /// Padding around [title].
  final PhlutsEdgeInsets? titlePadding;

  /// Text style for [title].
  final PhlutsTextStyle? titleTextStyle;

  /// The primary content of the dialog.
  final PhlutsWidget? content;

  /// Padding around [content].
  final PhlutsEdgeInsets? contentPadding;

  /// Text style for [content].
  final PhlutsTextStyle? contentTextStyle;

  /// Dialog action buttons.
  final List<PhlutsWidget>? actions;

  /// Padding around [actions].
  final PhlutsEdgeInsets? actionsPadding;

  /// How the actions should be placed along the main axis.
  final PhlutsMainAxisAlignment? actionsAlignment;

  /// How overflowing actions should be aligned horizontally.
  final PhlutsOverflowBarAlignment? actionsOverflowAlignment;

  /// The vertical direction for overflowing actions.
  final PhlutsVerticalDirection? actionsOverflowDirection;

  /// Spacing between overflowing action buttons.
  @DoubleConverter()
  final double? actionsOverflowButtonSpacing;

  /// The padding for the button bar.
  final PhlutsEdgeInsets? buttonPadding;

  /// The background color of the dialog's surface.
  final PhlutsColor? backgroundColor;

  /// The z-coordinate at which to place this dialog.
  @DoubleConverter()
  final double? elevation;

  /// The color of the dialog's shadow.
  final PhlutsColor? shadowColor;

  /// The color of the surface tint overlay applied to the background.
  final PhlutsColor? surfaceTintColor;

  /// The semantic label of the dialog.
  final String? semanticLabel;

  /// The padding around the outside of the dialog.
  final PhlutsEdgeInsets? insetPadding;

  /// How to clip the content.
  final PhlutsClip? clipBehavior;

  /// The shape of the dialog's material.
  final PhlutsShapeBorder? shape;

  /// Where to align the dialog.
  final PhlutsAlignment? alignment;

  /// Whether the dialog is scrollable.
  final bool? scrollable;

  /// Widget type identifier.
  @override
  String get type => WidgetType.alertDialog.name;

  /// Creates a [PhlutsAlertDialog] from a JSON map.
  factory PhlutsAlertDialog.fromJson(Map<String, dynamic> json) =>
      _$PhlutsAlertDialogFromJson(json);

  /// Converts this [PhlutsAlertDialog] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsAlertDialogToJson(this);
}
