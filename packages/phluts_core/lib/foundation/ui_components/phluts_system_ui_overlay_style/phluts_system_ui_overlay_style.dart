import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/colors/phluts_brightness.dart';

part 'phluts_system_ui_overlay_style.g.dart';

/// A Phluts representation of system UI overlay styling.
///
/// This class defines the appearance of system UI elements like the
/// status bar and navigation bar, including colors and brightness settings.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsSystemUIOverlayStyle(
///   statusBarColor: '#000000',
///   statusBarIconBrightness: PhlutsBrightness.light,
///   systemNavigationBarColor: '#FFFFFF',
///   systemNavigationBarIconBrightness: PhlutsBrightness.dark,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "statusBarColor": "#000000",
///   "statusBarIconBrightness": "light",
///   "systemNavigationBarColor": "#FFFFFF",
///   "systemNavigationBarIconBrightness": "dark"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsSystemUIOverlayStyle extends PhlutsElement {
  /// Creates a system UI overlay style with the specified properties.
  PhlutsSystemUIOverlayStyle({
    this.systemNavigationBarColor,
    this.systemNavigationBarDividerColor,
    this.systemNavigationBarIconBrightness,
    this.systemNavigationBarContrastEnforced,
    this.statusBarColor,
    this.statusBarBrightness,
    this.statusBarIconBrightness,
    this.systemStatusBarContrastEnforced,
  });

  /// The color of the system navigation bar.
  final String? systemNavigationBarColor;

  /// The color of the divider between the navigation bar and content.
  final String? systemNavigationBarDividerColor;

  /// The brightness of icons in the system navigation bar.
  final PhlutsBrightness? systemNavigationBarIconBrightness;

  /// Whether contrast enforcement is enabled for the navigation bar.
  final bool? systemNavigationBarContrastEnforced;

  /// The color of the status bar.
  final String? statusBarColor;

  /// The brightness of the status bar background.
  final PhlutsBrightness? statusBarBrightness;

  /// The brightness of icons in the status bar.
  final PhlutsBrightness? statusBarIconBrightness;

  /// Whether contrast enforcement is enabled for the status bar.
  final bool? systemStatusBarContrastEnforced;

  /// Creates a [PhlutsSystemUIOverlayStyle] from a JSON map.
  factory PhlutsSystemUIOverlayStyle.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSystemUIOverlayStyleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsSystemUIOverlayStyleToJson(this);
}
