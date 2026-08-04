import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_padding.g.dart';

/// A Phluts widget that adds padding around its child.
///
/// This widget corresponds to Flutter's Padding widget and provides
/// space around its child widget using edge insets.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsPadding(
///   padding: PhlutsEdgeInsets.all(16.0),
///   child: PhlutsText(data: 'Padded content'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "padding",
///   "padding": 16.0,
///   "child": {
///     "type": "text",
///     "data": "Padded content"
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsPadding extends PhlutsWidget {
  /// Creates a padding widget with optional padding and child.
  const PhlutsPadding({this.padding, this.child});

  /// The amount of space to pad the child.
  ///
  /// If null, no padding is applied.
  final PhlutsEdgeInsets? padding;

  /// The widget to apply padding to.
  final PhlutsWidget? child;

  @override
  String get type => WidgetType.padding.name;

  /// Creates a [PhlutsPadding] from a JSON map.
  factory PhlutsPadding.fromJson(Map<String, dynamic> json) =>
      _$PhlutsPaddingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PhlutsPaddingToJson(this);
}
