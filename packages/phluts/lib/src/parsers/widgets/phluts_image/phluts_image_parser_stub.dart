import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

class PhlutsImageParser extends PhlutsParser<PhlutsImage> {
  const PhlutsImageParser();

  @override
  String get type => WidgetType.image.name;

  @override
  PhlutsImage getModel(Map<String, dynamic> json) => PhlutsImage.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsImage model) =>
      throw UnimplementedError();
}
