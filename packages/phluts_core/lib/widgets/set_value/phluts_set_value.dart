import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_set_value.g.dart';

/// A Phluts widget that sets values in the application state.
///
/// This widget allows you to set multiple key-value pairs in the application's
/// state and optionally render a child widget. It's useful for managing
/// application state through JSON configuration.
///
/// ```dart
/// PhlutsSetValue(
///   values: [
///     {"key": "userName", "value": "John Doe"},
///     {"key": "isLoggedIn", "value": true},
///   ],
///   child: PhlutsText(data: 'Welcome!'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "setValue",
///   "values": [
///     {"key": "userName", "value": "John Doe"},
///     {"key": "isLoggedIn", "value": true}
///   ],
///   "child": {"type": "text", "data": "Welcome!"}
/// }
/// ```
@JsonSerializable()
class PhlutsSetValue extends PhlutsWidget {
  /// Creates a [PhlutsSetValue] widget.
  ///
  /// The [values] parameter contains a list of key-value pairs to set in
  /// the application state. The [child] parameter is an optional widget
  /// to render after the values are set.
  const PhlutsSetValue({this.values = const [], this.child});

  /// List of key-value pairs to set in the application state.
  final List<Map<String, dynamic>> values;

  /// The child widget to render after the values are set.
  final PhlutsWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.setValue.name;

  /// Creates a [PhlutsSetValue] from a JSON map.
  factory PhlutsSetValue.fromJson(Map<String, dynamic> json) =>
      _$PhlutsSetValueFromJson(json);

  /// Converts this widget to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsSetValueToJson(this);
}
