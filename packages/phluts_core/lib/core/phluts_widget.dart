import 'package:json_annotation/json_annotation.dart';

/// Base interface for all PHLUTS elements that can be serialized to JSON
abstract class PhlutsElement {
  /// Creates a [PhlutsElement] that represents a base element.
  const PhlutsElement();

  /// Converts this element to a JSON map
  dynamic toJson();
}

/// Base class for all PHLUTS widgets
/// This is a concrete implementation that can hold raw JSON data,
/// used primarily by JSON converters for deserialization
@JsonSerializable()
class PhlutsWidget extends PhlutsElement {
  /// Creates a [PhlutsWidget] that represents a widget.
  const PhlutsWidget({this.jsonData});

  /// Raw JSON data for this widget
  final Map<String, dynamic>? jsonData;

  /// The type of the widget
  @JsonKey(includeToJson: true)
  String get type => throw UnimplementedError();

  /// Creates a new widget from a JSON map
  factory PhlutsWidget.fromJson(Map<String, dynamic> json) {
    return PhlutsWidget(jsonData: json);
  }

  /// Converts this widget to a JSON map
  @override
  Map<String, dynamic> toJson() => jsonData ?? {};
}
