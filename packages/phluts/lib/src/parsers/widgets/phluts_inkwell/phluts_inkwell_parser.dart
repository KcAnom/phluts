import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

class PhlutsInkwellParser extends PhlutsParser<PhlutsInkWell> {
  const PhlutsInkwellParser();

  @override
  String get type => WidgetType.inkWell.name;

  @override
  PhlutsInkWell getModel(Map<String, dynamic> json) {
    return PhlutsInkWell.fromJson(json);
  }

  @override
  Widget parse(BuildContext context, PhlutsInkWell model) {
    return InkWell(
      onTap: () => model.onTap?.parse(context),
      onDoubleTap: () => model.onDoubleTap?.parse(context),
      onLongPress: () => model.onLongPress?.parse(context),
      onTapCancel: () => model.onTapCancel?.parse(context),
      onSecondaryTap: () => model.onSecondaryTap?.parse(context),
      onSecondaryTapCancel: () => model.onSecondaryTapCancel?.parse(context),
      onTapDown: (_) => model.onTapDown?.parse(context),
      onTapUp: (_) => model.onTapUp?.parse(context),
      onSecondaryTapUp: (_) => model.onSecondaryTapUp?.parse(context),
      onSecondaryTapDown: (_) => model.onSecondaryTapDown?.parse(context),
      onHighlightChanged: (_) => model.onHighlightChanged?.parse(context),
      onHover: (_) => model.onHover?.parse(context),
      onFocusChange: (_) => model.onFocusChange?.parse(context),
      mouseCursor: model.mouseCursor?.parse,
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      highlightColor: model.highlightColor?.toColor(context),
      overlayColor: model.overlayColor == null
          ? null
          : WidgetStateProperty.all(model.overlayColor!.toColor(context)),
      splashColor: model.splashColor?.toColor(context),
      radius: model.radius,
      borderRadius: model.borderRadius?.parse,
      customBorder: model.customBorder?.parse(context),
      enableFeedback: model.enableFeedback ?? true,
      excludeFromSemantics: model.excludeFromSemantics ?? false,
      canRequestFocus: model.canRequestFocus ?? true,
      autofocus: model.autofocus ?? false,
      hoverDuration: model.hoverDuration?.parse,
      child: model.child.parse(context),
    );
  }
}
