import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/core.dart';
import 'package:phluts_core/foundation/borders/phluts_border/phluts_border.dart';
import 'package:phluts_core/foundation/geometry/phluts_box_constraints/phluts_box_constraints.dart';
import 'package:phluts_core/foundation/geometry/phluts_size/phluts_size.dart';
import 'package:phluts_core/foundation/layout/phluts_clip.dart';

part 'phluts_bottom_sheet_theme_data.g.dart';

/// A Phluts model representing Flutter's [BottomSheetThemeData].
///
/// Defines the theme for bottom sheets, including colors, elevation, shape,
/// drag handle, and layout properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsBottomSheetThemeData(
///   backgroundColor: '#FFFFFF',
///   elevation: 8.0,
///   showDragHandle: true,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#FFFFFF",
///   "elevation": 8.0,
///   "modalElevation": 16.0,
///   "shadowColor": "#000000",
///   "showDragHandle": true,
///   "dragHandleColor": "#757575",
///   "clipBehavior": "antiAlias"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsBottomSheetThemeData implements PhlutsElement {
  /// Creates a [PhlutsBottomSheetThemeData] with the given properties.
  const PhlutsBottomSheetThemeData({
    this.backgroundColor,
    this.surfaceTintColor,
    this.elevation,
    this.modalBackgroundColor,
    this.modalBarrierColor,
    this.shadowColor,
    this.modalElevation,
    this.shape,
    this.showDragHandle,
    this.dragHandleColor,
    this.dragHandleSize,
    this.clipBehavior,
    this.constraints,
  });

  /// The background color of the bottom sheet.
  final String? backgroundColor;

  /// The color used to tint the surface of this bottom sheet.
  final String? surfaceTintColor;

  /// The z-coordinate at which to place this bottom sheet relative to its parent.
  final double? elevation;

  /// The background color of the modal bottom sheet.
  final String? modalBackgroundColor;

  /// The color of the modal barrier.
  final String? modalBarrierColor;

  /// The color of the shadow below the bottom sheet.
  final String? shadowColor;

  /// The z-coordinate at which to place the modal bottom sheet.
  final double? modalElevation;

  /// The shape of the bottom sheet's border.
  final PhlutsBorder? shape;

  /// Whether to show a drag handle on the bottom sheet.
  final bool? showDragHandle;

  /// The color of the drag handle.
  final String? dragHandleColor;

  /// The size of the drag handle.
  final PhlutsSize? dragHandleSize;

  /// How to clip the bottom sheet's content.
  final PhlutsClip? clipBehavior;

  /// Constraints on the size of the bottom sheet.
  final PhlutsBoxConstraints? constraints;

  /// Creates a [PhlutsBottomSheetThemeData] from JSON.
  factory PhlutsBottomSheetThemeData.fromJson(Map<String, dynamic> json) =>
      _$PhlutsBottomSheetThemeDataFromJson(json);

  /// Converts this bottom sheet theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsBottomSheetThemeDataToJson(this);
}
