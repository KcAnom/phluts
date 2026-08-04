import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_radio_group.g.dart';

/// A Phluts model representing a radio group scope similar to Flutter's form scope.
///
/// Establishes a [PhlutsRadioGroupScope] at runtime so descendant radio widgets
/// can read and update a shared selected value via the scope. This widget does
/// not render UI itself; it provides the scope and renders its [child].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsRadioGroup(
///   id: 'favoriteFruit',
///   groupValue: 'apple',
///   child: PhlutsColumn(children: [
///     PhlutsRadio(value: 'apple'),
///     PhlutsRadio(value: 'banana'),
///   ]),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "radioGroup",
///   "id": "favoriteFruit",
///   "groupValue": "apple",
///   "child": {
///     "type": "column",
///     "children": [
///       { "type": "radio", "value": "apple" },
///       { "type": "radio", "value": "banana" }
///     ]
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Radio documentation (`https://api.flutter.dev/flutter/material/Radio-class.html`)
@JsonSerializable()
class PhlutsRadioGroup extends PhlutsWidget {
  /// Creates a [PhlutsRadioGroup].
  const PhlutsRadioGroup({this.id, this.groupValue, this.child, this.onChanged});

  /// The identifier under which the selected value will be saved in a [PhlutsFormScope]'s form data.
  final String? id;

  /// The initially selected value shared among descendant [PhlutsRadio] widgets.
  final dynamic groupValue;

  /// The widget subtree to render within the radio group scope.
  final PhlutsWidget? child;

  /// The function to call when the group value changes.
  final PhlutsAction? onChanged;

  /// Widget type identifier.
  @override
  String get type => WidgetType.radioGroup.name;

  /// Creates a [PhlutsRadioGroup] from a JSON map.
  factory PhlutsRadioGroup.fromJson(Map<String, dynamic> json) =>
      _$PhlutsRadioGroupFromJson(json);

  /// Converts this [PhlutsRadioGroup] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsRadioGroupToJson(this);
}
