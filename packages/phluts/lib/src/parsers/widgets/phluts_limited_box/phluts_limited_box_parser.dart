import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts_framework/phluts_framework.dart';
import 'package:phluts_core/widgets/limited_box/phluts_limited_box.dart';

class PhlutsLimitedBoxParser extends PhlutsParser<PhlutsLimitedBox> {
  const PhlutsLimitedBoxParser();

  @override
  String get type => PhlutsLimitedBox().type;

  @override
  PhlutsLimitedBox getModel(Map<String, dynamic> json) =>
      PhlutsLimitedBox.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsLimitedBox model) {
    return LimitedBox(
      maxHeight: model.maxHeight ?? double.infinity,
      maxWidth: model.maxWidth ?? double.infinity,
      child: model.child.parse(context),
    );
  }
}
