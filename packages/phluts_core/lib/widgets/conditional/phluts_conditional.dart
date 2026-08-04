import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_conditional.g.dart';

/// A Phluts model representing a conditional widget.
///
/// Evaluates a boolean expression in [condition] and renders either [ifTrue]
/// or [ifFalse]. If [ifFalse] is not provided and the condition evaluates to
/// false, an empty widget will be rendered by the parser.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsConditional(
///   condition: "user.isLoggedIn == true",
///   ifTrue: PhlutsText(data: 'Welcome back!'),
///   ifFalse: PhlutsText(data: 'Please sign in'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "conditional",
///   "condition": "user.isLoggedIn == true",
///   "ifTrue": { "type": "text", "data": "Welcome back!" },
///   "ifFalse": { "type": "text", "data": "Please sign in" }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsConditional extends PhlutsWidget {
  /// Creates a [PhlutsConditional].
  const PhlutsConditional({
    required this.condition,
    required this.ifTrue,
    this.ifFalse,
  });

  /// The boolean expression to evaluate.
  ///
  /// This string is evaluated at runtime by the framework's expression
  /// resolver. If it evaluates to true, [ifTrue] is rendered; otherwise
  /// [ifFalse] is rendered when provided.
  final String condition;

  /// The widget to render when [condition] evaluates to true.
  final PhlutsWidget ifTrue;

  /// The widget to render when [condition] evaluates to false.
  /// If null, the parser will render an empty widget.
  final PhlutsWidget? ifFalse;

  /// Widget type identifier.
  @override
  String get type => WidgetType.conditional.name;

  /// Creates a [PhlutsConditional] from a JSON map.
  factory PhlutsConditional.fromJson(Map<String, dynamic> json) =>
      _$PhlutsConditionalFromJson(json);

  /// Converts this [PhlutsConditional] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsConditionalToJson(this);
}
