import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/borders/phluts_beveled_rectangle_border/phluts_beveled_rectangle_border.dart';
import 'package:phluts_core/foundation/borders/phluts_border_side/phluts_border_side.dart';
import 'package:phluts_core/foundation/borders/phluts_circle_border/phluts_circle_border.dart';
import 'package:phluts_core/foundation/borders/phluts_continuous_rectangle_border/phluts_continuous_rectangle_border.dart';
import 'package:phluts_core/foundation/borders/phluts_rounded_rectangle_border/phluts_rounded_rectangle_border.dart';

/// Types of shape borders supported by the Phluts framework.
enum PhlutsShapeBorderType {
  /// Circular border shape.
  circleBorder,

  /// Rounded rectangle border with customizable corner radius.
  roundedRectangleBorder,

  /// Continuous rectangle border with smooth curves.
  continuousRectangleBorder,

  /// Beveled rectangle border with angled corners.
  beveledRectangleBorder,
}

/// Abstract base class for Phluts shape borders.
///
/// Defines the common interface for all shape border implementations.
/// Each shape border type extends this class and provides its own
/// specific properties and behavior.
///
/// ```dart
/// // Example usage with RoundedRectangleBorder
/// PhlutsRoundedRectangleBorder(
///   borderRadius: PhlutsBorderRadius.all(8.0),
///   side: PhlutsBorderSide(width: 1.0, color: PhlutsColors.grey),
/// )
/// ```
///
/// ```json
/// {
///   "type": "roundedRectangle",
///   "borderRadius": {"all": 8.0},
///   "side": {"width": 1.0, "color": "#808080"}
/// }
/// ```
@JsonSerializable()
abstract class PhlutsShapeBorder implements PhlutsElement {
  /// Creates a [PhlutsShapeBorder] with the given properties.
  const PhlutsShapeBorder({this.side, required this.type});

  /// The border side properties.
  final PhlutsBorderSide? side;

  /// The type identifier for this shape border.
  /// Must be implemented by subclasses.
  @JsonKey(includeToJson: true)
  final PhlutsShapeBorderType type;

  /// Creates a [PhlutsShapeBorder] from JSON.
  /// This factory method delegates to the appropriate subclass
  /// based on the "type" field in the JSON.
  factory PhlutsShapeBorder.fromJson(Map<String, dynamic> json) {
    final dynamic rawType = json['type'];
    final String? typeString = rawType is String ? rawType : null;

    // Resolve string to enum; support missing or alias values and provide a safe default
    PhlutsShapeBorderType? resolvedType;

    if (typeString != null) {
      for (final enumValue in PhlutsShapeBorderType.values) {
        if (enumValue.name == typeString) {
          resolvedType = enumValue;
          break;
        }
      }

      // Fallback aliases (legacy/short names)
      resolvedType ??= () {
        switch (typeString) {
          case 'roundedRectangle':
          case 'roundedRectangleBorder':
            return PhlutsShapeBorderType.roundedRectangleBorder;
          case 'circle':
          case 'circleBorder':
            return PhlutsShapeBorderType.circleBorder;
          case 'continuousRectangle':
          case 'continuousRectangleBorder':
            return PhlutsShapeBorderType.continuousRectangleBorder;
          case 'beveledRectangle':
          case 'beveledRectangleBorder':
            return PhlutsShapeBorderType.beveledRectangleBorder;
        }
        return null;
      }();
    }

    // If still unknown or missing, default to rounded rectangle (most common)
    resolvedType ??= PhlutsShapeBorderType.roundedRectangleBorder;

    switch (resolvedType) {
      case PhlutsShapeBorderType.roundedRectangleBorder:
        return PhlutsRoundedRectangleBorder.fromJson(json);
      case PhlutsShapeBorderType.circleBorder:
        return PhlutsCircleBorder.fromJson(json);

      case PhlutsShapeBorderType.continuousRectangleBorder:
        return PhlutsContinuousRectangleBorder.fromJson(json);
      case PhlutsShapeBorderType.beveledRectangleBorder:
        return PhlutsBeveledRectangleBorder.fromJson(json);
    }
  }
}
