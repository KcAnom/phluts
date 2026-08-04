import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

class PhlutsContainerParser extends PhlutsParser<PhlutsContainer> {
  const PhlutsContainerParser();

  @override
  String get type => WidgetType.container.name;

  @override
  PhlutsContainer getModel(Map<String, dynamic> json) =>
      PhlutsContainer.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsContainer model) {
    return Container(
      alignment: model.alignment?.parse,
      padding: model.padding?.parse,
      color: model.color.toColor(context),
      decoration: model.decoration?.parse(context),
      foregroundDecoration: model.foregroundDecoration?.parse(context),
      width: model.width,
      height: model.height,
      constraints: model.constraints?.parse,
      margin: model.margin?.parse,
      transformAlignment: model.transformAlignment?.parse,
      clipBehavior: model.clipBehavior?.parse ?? Clip.none,
      child: model.child?.parse(context),
    );
  }
}
