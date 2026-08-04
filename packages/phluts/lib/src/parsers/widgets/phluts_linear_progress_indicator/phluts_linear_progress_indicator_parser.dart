import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

class PhlutsLinearProgressIndicatorParser
    extends PhlutsParser<PhlutsLinearProgressIndicator> {
  const PhlutsLinearProgressIndicatorParser();

  @override
  String get type => WidgetType.linearProgressIndicator.name;

  @override
  PhlutsLinearProgressIndicator getModel(Map<String, dynamic> json) =>
      PhlutsLinearProgressIndicator.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsLinearProgressIndicator model) {
    return LinearProgressIndicator(
      value: model.value,
      backgroundColor: model.backgroundColor?.toColor(context),
      color: model.color?.toColor(context),
      minHeight: model.minHeight,
      semanticsLabel: model.semanticsLabel,
      semanticsValue: model.semanticsValue,
      borderRadius: model.borderRadius?.parse,
    );
  }
}
