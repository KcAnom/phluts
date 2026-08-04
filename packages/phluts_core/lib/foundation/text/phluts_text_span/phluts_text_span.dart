import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';

part 'phluts_text_span.g.dart';

/// A Phluts representation of an immutable span of text.
///
/// This class defines a piece of text with associated styling and
/// optional child spans for rich text formatting.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsTextSpan(
///   text: 'Hello ',
///   style: PhlutsTextStyle(fontWeight: PhlutsFontWeight.bold),
///   children: [
///     PhlutsTextSpan(text: 'World', style: PhlutsTextStyle(color: PhlutsColors.blue)),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "text": "Hello ",
///   "style": {"fontWeight": "bold"},
///   "children": [
///     {"text": "World", "style": {"color": "#2196F3"}}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsTextSpan implements PhlutsElement {
  /// Creates a text span with optional text, style, children, and tap handler.
  PhlutsTextSpan({this.text, this.style, this.children = const [], this.onTap});

  /// The text content of this span.
  final String? text;

  /// The style to apply to the text in this span.
  final PhlutsTextStyle? style;

  /// Additional text spans to include as children.
  final List<PhlutsTextSpan> children;

  /// Action to perform when this text span is tapped.
  final Map<String, dynamic>? onTap;

  @override
  Map<String, dynamic> toJson() => _$PhlutsTextSpanToJson(this);

  /// Creates a [PhlutsTextSpan] from a JSON map.
  factory PhlutsTextSpan.fromJson(Map<String, dynamic> json) =>
      _$PhlutsTextSpanFromJson(json);
}
