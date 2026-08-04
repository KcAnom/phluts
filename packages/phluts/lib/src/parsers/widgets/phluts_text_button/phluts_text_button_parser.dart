import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/parsers/theme/themes.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsTextButtonParser extends PhlutsParser<PhlutsTextButton> {
  const PhlutsTextButtonParser();

  @override
  PhlutsTextButton getModel(Map<String, dynamic> json) =>
      PhlutsTextButton.fromJson(json);

  @override
  String get type => WidgetType.textButton.name;

  @override
  Widget parse(BuildContext context, PhlutsTextButton model) {
    return TextButton(
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
      style: model.style?.parseTextButton(context),
      autofocus: model.autofocus ?? false,
      clipBehavior: model.clipBehavior?.parse,
      isSemanticButton: model.isSemanticButton,
      child: model.child?.parse(context) ?? const SizedBox(),
    );
  }
}
