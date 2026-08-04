import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_tool_tip.g.dart';

/// A Phluts model representing Flutter's [Tooltip] widget.
///
/// Tooltips provide text labels which help explain the function of a button
/// or other user interface action. Wrap the button in a Tooltip widget
/// and provide a message which will be shown when the widget is long pressed.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsTooltip(
///   message: 'I am a Tooltip',
///   child: PhlutsIcon(icon: 'info'),
///   decoration: PhlutsBoxDecoration(
///     color: PhlutsColors.blue,
///     borderRadius: PhlutsBorderRadius.circular(4),
///   ),
///   textStyle: PhlutsTextStyle(color: PhlutsColors.white),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "tooltip",
///   "message": "I am a Tooltip",
///   "child": { "type": "icon", "icon": "info" },
///   "waitDuration": { "milliseconds": 500 },
///   "preferBelow": false
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Tooltip documentation (`https://api.flutter.dev/flutter/material/Tooltip-class.html`)
@JsonSerializable(explicitToJson: true)
class PhlutsTooltip extends PhlutsWidget {
  /// Creates a [PhlutsTooltip] that displays a text label on long press.
  const PhlutsTooltip({
    this.message,
    this.richMessage,
    this.constraints,
    this.padding,
    this.margin,
    this.verticalOffset,
    this.preferBelow,
    this.excludeFromSemantics,
    this.decoration,
    this.textStyle,
    this.textAlign,
    this.waitDuration,
    this.showDuration,
    this.exitDuration,
    this.enableTapToDismiss = true,
    this.triggerMode,
    this.enableFeedback,
    this.child,
  });

  /// The text to display in the tooltip.
  final String? message;

  /// The rich text to display in the tooltip.
  ///
  /// If [richMessage] is non-null, [message] is ignored.
  final PhlutsTextSpan? richMessage;

  /// The additional constraints to apply to the tooltip's [child].
  ///
  /// This allows specifying the minimum and maximum width and height of the
  /// tooltip. If null, the tooltip will resize itself to fit its content.
  final PhlutsBoxConstraints? constraints;

  /// The amount of space by which to inset the tooltip's [child].
  final PhlutsEdgeInsets? padding;

  /// The empty space that surrounds the tooltip.
  ///
  /// Defines the tooltip's outer margins, for example when the tooltip is
  /// constrained by the edge of the screen.
  final PhlutsEdgeInsets? margin;

  /// The vertical gap between the widget and the displayed tooltip.
  ///
  /// When [preferBelow] is set to true and the tooltip has sufficient space
  /// to display itself, this property defines how much vertical space
  /// there is between the bottom of the widget and the top of the tooltip.
  final double? verticalOffset;

  /// Whether the tooltip defaults to being displayed below the widget.
  ///
  /// If there is insufficient space to display the tooltip in the preferred
  /// direction, the tooltip will be displayed in the opposite direction.
  final bool? preferBelow;

  /// Whether the tooltip's [message] should be excluded from the semantics
  /// tree.
  final bool? excludeFromSemantics;

  /// The visual decoration to use for the tooltip.
  ///
  /// If null, the tooltip's background color is determined by [ThemeData.tooltipTheme].
  final PhlutsBoxDecoration? decoration;

  /// The style to use for the message of the tooltip.
  ///
  /// If null, the style is determined by [ThemeData.tooltipTheme].
  final PhlutsTextStyle? textStyle;

  /// How the message of the tooltip is aligned horizontally.
  final PhlutsTextAlign? textAlign;

  /// The length of time that a pointer must hover over a tooltip's widget
  /// before the tooltip will be shown.
  ///
  /// Defined in milliseconds.
  final PhlutsDuration? waitDuration;

  /// The length of time that the tooltip will be shown after a long press
  /// is released (if triggerMode is PhlutsTooltipTriggerMode.longPress) or
  /// a tap is released (if triggerMode is PhlutsTooltipTriggerMode.tap).
  ///
  /// Defined in milliseconds.
  final PhlutsDuration? showDuration;

  /// The length of time that the tooltip takes to fade out after the
  /// [showDuration] has passed.
  ///
  /// Defined in milliseconds.
  final PhlutsDuration? exitDuration;

  /// Whether the tooltip can be dismissed by tapping the screen.
  final bool enableTapToDismiss;

  /// Defines how this widget can be triggered.
  /// Defaults to [PhlutsTooltipTriggerMode.longPress] in the Flutter widget.
  final PhlutsTooltipTriggerMode? triggerMode;

  /// Whether the tooltip should provide acoustic and/or haptic feedback.
  ///
  /// For example, on Android a tap will produce a clicking sound and a
  /// long-press will produce a short vibration, when feedback is enabled.
  final bool? enableFeedback;

  /// The widget below this widget in the tree.
  final PhlutsWidget? child;

  @override
  String get type => WidgetType.tooltip.name;

  /// Creates a [PhlutsTooltip] from a JSON map.
  factory PhlutsTooltip.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTooltipFromJson(json);

  /// Converts this [PhlutsTooltip] to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsTooltipToJson(this);
}
