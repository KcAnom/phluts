import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_align_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_direction_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_width_basis_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';
import 'package:phluts_core/widgets/selectable_text/phluts_selectable_text.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSelectableTextParser extends PhlutsParser<PhlutsSelectableText> {
  const PhlutsSelectableTextParser();

  @override
  String get type => WidgetType.selectableText.name;

  @override
  PhlutsSelectableText getModel(Map<String, dynamic> json) =>
      PhlutsSelectableText.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsSelectableText model) {
    return SelectableText.rich(
      _buildTextSpan(context, model),
      onTap: model.onTap != null
          ? () => Phluts.onCallFromJson(model.onTap?.toJson(), context)
          : null,
      style: _resolveStyle(context, model.style, model.copyWithStyle),
      textAlign: model.textAlign?.parse,
      textDirection: model.textDirection?.parse,
      textScaler: model.textScaler != null
          ? TextScaler.linear(model.textScaler!)
          : null,
      showCursor: model.showCursor ?? false,
      autofocus: model.autofocus ?? false,
      minLines: model.minLines,
      maxLines: model.maxLines,
      cursorWidth: model.cursorWidth ?? 2.0,
      cursorHeight: model.cursorHeight,
      cursorRadius: model.cursorRadius != null
          ? Radius.circular(model.cursorRadius!)
          : null,
      cursorColor: model.cursorColor?.toColor(context),
      selectionColor: model.selectionColor?.toColor(context),
      enableInteractiveSelection: model.enableInteractiveSelection ?? true,
      semanticsLabel: model.semanticsLabel,
      textWidthBasis: model.textWidthBasis?.parse,
    );
  }

  TextSpan _buildTextSpan(BuildContext context, PhlutsSelectableText model) {
    var children = model.children ?? [];
    return TextSpan(
      text: model.data,
      children: children.map((child) {
        return TextSpan(
          text: child.text,
          style: child.style?.parse(context),
          recognizer: child.onTap != null
              ? (TapGestureRecognizer()
                  ..onTap = () => Phluts.onCallFromJson(child.onTap, context))
              : null,
        );
      }).toList(),
    );
  }

  TextStyle? _resolveStyle(
    BuildContext context,
    PhlutsTextStyle? base,
    PhlutsCustomTextStyle? override,
  ) {
    final baseStyle = base?.parse(context);
    if (override == null) return baseStyle;

    final overrideParsed = override.parse(context);
    if (overrideParsed == null) return baseStyle;
    if (baseStyle == null) return overrideParsed;

    return baseStyle.copyWith(
      inherit: override.inherit,
      color: overrideParsed.color,
      backgroundColor: overrideParsed.backgroundColor,
      fontSize: overrideParsed.fontSize,
      fontWeight: overrideParsed.fontWeight,
      fontStyle: overrideParsed.fontStyle,
      letterSpacing: overrideParsed.letterSpacing,
      wordSpacing: overrideParsed.wordSpacing,
      textBaseline: overrideParsed.textBaseline,
      height: overrideParsed.height,
      leadingDistribution: overrideParsed.leadingDistribution,
      decoration: overrideParsed.decoration,
      decorationColor: overrideParsed.decorationColor,
      decorationStyle: overrideParsed.decorationStyle,
      decorationThickness: overrideParsed.decorationThickness,
      debugLabel: overrideParsed.debugLabel,
      fontFamily: overrideParsed.fontFamily,
      fontFamilyFallback: overrideParsed.fontFamilyFallback,
      overflow: overrideParsed.overflow,
    );
  }
}
