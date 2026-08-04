import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/parsers/theme/themes.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsOutlinedButtonParser extends PhlutsParser<PhlutsOutlinedButton> {
  const PhlutsOutlinedButtonParser();

  @override
  PhlutsOutlinedButton getModel(Map<String, dynamic> json) =>
      PhlutsOutlinedButton.fromJson(json);

  @override
  String get type => WidgetType.outlinedButton.name;

  @override
  Widget parse(BuildContext context, PhlutsOutlinedButton model) {
    return OutlinedButton(
      onPressed: model.onPressed == null
          ? null
          : () => Phluts.onCallFromJson(model.onPressed?.toJson(), context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Phluts.onCallFromJson(model.onLongPress?.toJson(), context),
      onHover: model.onHover == null
          ? null
          : (bool value) =>
                Phluts.onCallFromJson(model.onHover?.toJson(), context),
      onFocusChange: model.onFocusChange == null
          ? null
          : (bool value) =>
                Phluts.onCallFromJson(model.onFocusChange?.toJson(), context),
      style: model.style?.parseOutlinedButton(context),
      autofocus: model.autofocus ?? false,
      clipBehavior: model.clipBehavior?.parse,
      child: model.child?.parse(context),
    );
  }
}
