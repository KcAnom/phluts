import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsFloatingActionButtonParser
    extends PhlutsParser<PhlutsFloatingActionButton> {
  const PhlutsFloatingActionButtonParser();

  @override
  String get type => WidgetType.floatingActionButton.name;

  @override
  PhlutsFloatingActionButton getModel(Map<String, dynamic> json) =>
      PhlutsFloatingActionButton.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsFloatingActionButton model) {
    switch (model.buttonType) {
      case PhlutsFloatingActionButtonType.extended:
        return FloatingActionButton.extended(
          onPressed: model.onPressed == null
              ? null
              : () => model.onPressed?.parse(context),
          icon: model.icon?.parse(context),
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          extendedTextStyle: model.extendedTextStyle?.parse(context),
          elevation: model.elevation,
          focusElevation: model.focusElevation,
          hoverElevation: model.hoverElevation,
          disabledElevation: model.disabledElevation,
          highlightElevation: model.highlightElevation,
          extendedIconLabelSpacing: model.extendedIconLabelSpacing,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus ?? false,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          label: model.child?.parse(context) ?? const SizedBox(),
        );

      case PhlutsFloatingActionButtonType.large:
        return FloatingActionButton.large(
          onPressed: model.onPressed == null
              ? null
              : () => model.onPressed?.parse(context),
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          elevation: model.elevation,
          focusElevation: model.focusElevation,
          hoverElevation: model.hoverElevation,
          disabledElevation: model.disabledElevation,
          highlightElevation: model.highlightElevation,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus ?? false,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          child: model.child?.parse(context),
        );

      case PhlutsFloatingActionButtonType.medium:
        return FloatingActionButton(
          onPressed: model.onPressed == null
              ? null
              : () => model.onPressed?.parse(context),
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          elevation: model.elevation,
          focusElevation: model.focusElevation,
          hoverElevation: model.hoverElevation,
          disabledElevation: model.disabledElevation,
          highlightElevation: model.highlightElevation,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus ?? false,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          child: model.child?.parse(context),
        );

      case PhlutsFloatingActionButtonType.small:
        return FloatingActionButton.small(
          onPressed: model.onPressed == null
              ? null
              : () => model.onPressed?.parse(context),
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          elevation: model.elevation,
          focusElevation: model.focusElevation,
          hoverElevation: model.hoverElevation,
          disabledElevation: model.disabledElevation,
          highlightElevation: model.highlightElevation,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus ?? false,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          child: model.child?.parse(context),
        );
    }
  }
}
