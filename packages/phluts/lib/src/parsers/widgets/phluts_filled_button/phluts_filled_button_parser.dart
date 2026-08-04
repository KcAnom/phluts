import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/parsers/theme/themes.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsFilledButtonParser extends PhlutsParser<PhlutsFilledButton> {
  const PhlutsFilledButtonParser();

  @override
  String get type => WidgetType.filledButton.name;

  @override
  PhlutsFilledButton getModel(Map<String, dynamic> json) =>
      PhlutsFilledButton.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsFilledButton model) {
    return FilledButton(
      onPressed: model.onPressed == null
          ? null
          : () => model.onPressed?.parse(context),
      onLongPress: model.onLongPress == null
          ? null
          : () => model.onLongPress?.parse(context),
      onHover: model.onHover == null
          ? null
          : (bool value) => model.onHover?.parse(context),
      onFocusChange: model.onFocusChange == null
          ? null
          : (bool value) => model.onFocusChange?.parse(context),
      style: model.style?.parseFilledButton(context),
      autofocus: model.autofocus ?? false,
      clipBehavior: model.clipBehavior?.parse,
      child: model.child?.parse(context),
    );
  }
}
