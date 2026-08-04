import 'package:flutter/widgets.dart';

/// [PhlutsParser] is an abstract class that is used to parse a JSON object into
/// a model and then parse the model into a widget.
///
/// This is used to create a parser for each type of PHLUTS item asset.
/// For example, a [PhlutsTextParser] can be used to parse a PHLUTS item asset
/// with a `"type": "text"` field into a [Text] widget.
abstract class PhlutsParser<T> {
  const PhlutsParser();

  /// The `type` of the model that this parser can parse.
  ///
  /// This is used to identify the type of the model in the JSON object.
  String get type;

  /// Parses a JSON object into a model [T].
  ///
  /// This method should be implemented to parse a JSON object into a model.
  /// The JSON object is typically a part of the PHLUTS widget.
  /// The model [T] should contain all the necessary data to build a widget.
  T getModel(Map<String, dynamic> json);

  /// Parses a model [T] into a [Widget].
  ///
  /// This method should be implemented to parse a model into a widget.
  /// The model [T] is the result of the [getModel] method.
  /// The [BuildContext] is the current build context.
  Widget parse(BuildContext context, T model);
}
