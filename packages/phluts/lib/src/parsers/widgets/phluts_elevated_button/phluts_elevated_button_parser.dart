import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/parsers/theme/themes.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsElevatedButtonParser extends PhlutsParser<PhlutsElevatedButton> {
  const PhlutsElevatedButtonParser();

  @override
  String get type => WidgetType.elevatedButton.name;

  @override
  PhlutsElevatedButton getModel(Map<String, dynamic> json) =>
      PhlutsElevatedButton.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsElevatedButton model) {
    return ElevatedButton(
      onPressed: model.onPressed == null
          ? null
          : () => model.onPressed?.parse(context),
      onLongPress: model.onLongPress == null
          ? null
          : () => model.onLongPress?.parse(context),
      onHover: model.onHover == null
          ? null
          : (bool value) =>
                value == false ? null : model.onHover?.parse(context),
      onFocusChange: model.onFocusChange == null
          ? null
          : (bool value) =>
                value == false ? null : model.onFocusChange?.parse(context),
      style: model.style?.parseElevatedButton(context),
      autofocus: model.autofocus ?? false,
      clipBehavior: model.clipBehavior?.parse,
      child: model.child?.parse(context),
    );
  }
}
