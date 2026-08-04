import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_align_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_direction_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_overflow_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_width_basis_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';
import 'package:phluts_core/foundation/text/phluts_text_style/phluts_text_style.dart';
import 'package:phluts_core/widgets/text/phluts_text.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsTextParser extends PhlutsParser<PhlutsText> {
  const PhlutsTextParser();

  @override
  String get type => WidgetType.text.name;

  @override
  PhlutsText getModel(Map<String, dynamic> json) => PhlutsText.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsText model) {
    return Text.rich(
      _buildTextSpan(context, model),
      style: _resolveStyle(context, model.style, model.copyWithStyle),
      textAlign: model.textAlign?.parse,
      textDirection: model.textDirection?.parse,
      softWrap: model.softWrap,
      overflow: model.overflow?.parse,
      textScaler: model.textScaleFactor != null
          ? TextScaler.linear(model.textScaleFactor!)
          : TextScaler.noScaling,
      maxLines: model.maxLines,
      semanticsLabel: model.semanticsLabel,
      textWidthBasis: model.textWidthBasis?.parse,
      selectionColor: model.selectionColor?.toColor(context),
    );
  }

  TextSpan _buildTextSpan(BuildContext context, PhlutsText model) {
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
    if (baseStyle == null) return null;

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
