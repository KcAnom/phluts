import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/phluts_core.dart';

part 'phluts_button_theme_data.g.dart';

/// Button text theme options.
///
/// Defines how button text colors are determined.
enum PhlutsButtonTextTheme {
  /// Button text is black or white depending on the theme brightness.
  normal,

  /// Button text uses the secondary color from the color scheme.
  accent,

  /// Button text is based on the primary color.
  primary,
}

/// Button bar layout behavior options.
///
/// Defines how button bars are laid out.
enum PhlutsButtonBarLayoutBehavior {
  /// Button bars will be constrained to a minimum height of 52.
  ///
  /// This setting is required to create button bars which conform to the
  /// Material Design specification.
  constrained,

  /// Button bars will be padded.
  ///
  /// This is the default behavior.
  padded,
}

/// A Phluts model representing Flutter's [ButtonThemeData].
///
/// Defines the theme for Material buttons, including colors, dimensions, shapes,
/// and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsButtonThemeData(
///   minWidth: 88.0,
///   height: 36.0,
///   buttonColor: '#2196F3',
///   textTheme: PhlutsButtonTextTheme.primary,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "minWidth": 88.0,
///   "height": 36.0,
///   "buttonColor": "#2196F3",
///   "disabledColor": "#BDBDBD",
///   "textTheme": "primary",
///   "layoutBehavior": "padded",
///   "alignedDropdown": false
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsButtonThemeData implements PhlutsElement {
  /// Creates a [PhlutsButtonThemeData] with the given properties.
  const PhlutsButtonThemeData({
    this.textTheme,
    this.minWidth,
    this.height,
    this.padding,
    this.shape,
    this.layoutBehavior,
    this.alignedDropdown,
    this.buttonColor,
    this.disabledColor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.colorScheme,
    this.materialTapTargetSize,
  });

  /// The text theme for button labels.
  final PhlutsButtonTextTheme? textTheme;

  /// The minimum width of the button.
  final double? minWidth;

  /// The height of the button.
  final double? height;

  /// The internal padding for the button's content.
  final PhlutsEdgeInsets? padding;

  /// The shape of the button's border.
  final PhlutsShapeBorder? shape;

  /// The layout behavior for button bars.
  final PhlutsButtonBarLayoutBehavior? layoutBehavior;

  /// Whether dropdown buttons should be aligned.
  final bool? alignedDropdown;

  /// The default background color for buttons.
  final String? buttonColor;

  /// The color to use for disabled buttons.
  final String? disabledColor;

  /// The color to use when the button has input focus.
  final String? focusColor;

  /// The color to use when the button is being hovered over.
  final String? hoverColor;

  /// The highlight color for the button.
  final String? highlightColor;

  /// The splash color for the button.
  final String? splashColor;

  /// The color scheme to use for buttons.
  final PhlutsColorScheme? colorScheme;

  /// The minimum size of the tap target.
  final PhlutsMaterialTapTargetSize? materialTapTargetSize;

  /// Creates a [PhlutsButtonThemeData] from JSON.
  factory PhlutsButtonThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsButtonThemeDataFromJson(json);

  /// Converts this button theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsButtonThemeDataToJson(this);
}
