import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/phluts_core.dart';

part 'phluts_tool_tip_theme_data.g.dart';

/// A Phluts model representing Flutter's [TooltipThemeData].
///
/// Defines default visual and behavioral properties for [Tooltip] widgets.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsTooltipThemeData(
///   padding: PhlutsEdgeInsets.all(8),
///   textStyle: PhlutsTextStyle(color: '#FFFFFF'),
///   preferBelow: true,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "padding": { "all": 8 },
///   "margin": { "horizontal": 12 },
///   "verticalOffset": 24,
///   "preferBelow": true,
///   "textStyle": { "color": "#FFFFFF", "fontSize": 12 },
///   "triggerMode": "longPress"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsTooltipThemeData implements PhlutsElement {
  /// Creates a [PhlutsTooltipThemeData] with the given properties.
  const PhlutsTooltipThemeData({
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
    this.triggerMode,
    this.enableFeedback,
  });

  /// Size constraints for the tooltip.
  final PhlutsBoxConstraints? constraints;

  /// Padding inside the tooltip.
  final PhlutsEdgeInsets? padding;

  /// Margin around the tooltip.
  final PhlutsEdgeInsets? margin;

  /// Vertical gap between widget and tooltip.
  final double? verticalOffset;

  /// Whether tooltip prefers to appear below the widget.
  final bool? preferBelow;

  /// Whether tooltip text is excluded from semantics.
  final bool? excludeFromSemantics;

  /// Tooltip decoration.
  final PhlutsBoxDecoration? decoration;

  /// Tooltip text style.
  final PhlutsTextStyle? textStyle;

  /// Tooltip text alignment.
  final PhlutsTextAlign? textAlign;

  /// Delay before showing tooltip.
  final PhlutsDuration? waitDuration;

  /// Duration tooltip remains visible.
  final PhlutsDuration? showDuration;

  /// Delay before tooltip disappears.
  final PhlutsDuration? exitDuration;

  /// Trigger mode for tooltip.
  final PhlutsTooltipTriggerMode? triggerMode;

  /// Whether to provide acoustic/haptic feedback.
  final bool? enableFeedback;

  /// Creates a [PhlutsTooltipThemeData] from JSON.
  factory PhlutsTooltipThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTooltipThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsTooltipThemeDataToJson(this);
}
