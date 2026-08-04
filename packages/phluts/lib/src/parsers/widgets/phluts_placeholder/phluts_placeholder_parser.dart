import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsPlaceholderParser extends PhlutsParser<PhlutsPlaceholder> {
  const PhlutsPlaceholderParser();

  @override
  String get type => WidgetType.placeholder.name;

  @override
  PhlutsPlaceholder getModel(Map<String, dynamic> json) =>
      PhlutsPlaceholder.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsPlaceholder model) {
    return Placeholder(
      fallbackWidth: model.fallbackWidth ?? 2.0,
      fallbackHeight: model.fallbackHeight ?? 400.0,
      strokeWidth: model.strokeWidth ?? 400.0,
      color: (model.color?.toColor(context)) ?? const Color(0xFF455A64),
      child: model.child?.parse(context),
    );
  }
}
