import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/foundation/colors/phluts_brightness_parser.dart';
import 'package:phluts/src/parsers/foundation/decoration/phluts_input_decoration_parser.dart';
import 'package:phluts/src/parsers/foundation/forms/phluts_autovalidate_mode_parser.dart';
import 'package:phluts/src/parsers/foundation/forms/phluts_input_formatter_type_parser.dart';
import 'package:phluts/src/parsers/foundation/forms/phluts_max_length_enforcement_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_smart_dashes_type_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_smart_quotes_type_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_align_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_capitalization_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_direction_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_input_action_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_input_type_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/parsers/widgets/phluts_form/phluts_form_scope.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts/src/utils/input_validations.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';
import 'package:phluts_logger/phluts_logger.dart';

class PhlutsTextFormFieldParser extends PhlutsParser<PhlutsTextFormField> {
  const PhlutsTextFormFieldParser();

  @override
  PhlutsTextFormField getModel(Map<String, dynamic> json) =>
      PhlutsTextFormField.fromJson(json);

  @override
  String get type => WidgetType.textFormField.name;

  @override
  Widget parse(BuildContext context, PhlutsTextFormField model) {
    return _TextFormFieldWidget(model, PhlutsFormScope.of(context));
  }
}

class _TextFormFieldWidget extends StatefulWidget {
  const _TextFormFieldWidget(this.model, this.formScope);

  final PhlutsTextFormField model;
  final PhlutsFormScope? formScope;

  @override
  State<_TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<_TextFormFieldWidget> {
  late final TextEditingController _controller;
  final _focusNode = FocusNode();
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();

    _obscureText = widget.model.obscureText ?? false;

    String resolvedText = widget.model.initialValue ?? '';
    final id = widget.model.id;
    final scope = widget.formScope;
    if (id != null && scope != null) {
      final existing = scope.formData[id];
      if (existing != null && existing.toString().trim().isNotEmpty) {
        resolvedText = existing.toString();
      }
      scope.formData[id] = resolvedText;
    }

    _controller = TextEditingController(text: resolvedText);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      focusNode: _focusNode,
      onChanged: (value) {
        if (widget.model.id != null) {
          widget.formScope?.formData[widget.model.id!] = value;
        }
      },
      keyboardType: widget.model.keyboardType?.parse,
      textInputAction: widget.model.textInputAction?.parse,
      textCapitalization:
          widget.model.textCapitalization?.parse ?? TextCapitalization.none,
      textAlign: widget.model.textAlign?.parse ?? TextAlign.start,
      textDirection: widget.model.textDirection?.parse,
      readOnly: widget.model.readOnly ?? false,
      showCursor: widget.model.showCursor,
      autofocus: widget.model.autofocus ?? false,
      autovalidateMode: widget.model.autovalidateMode?.parse,
      obscuringCharacter: widget.model.obscuringCharacter ?? '•',
      maxLines: widget.model.maxLines ?? 1,
      minLines: widget.model.minLines,
      maxLength: widget.model.maxLength,
      obscureText: _obscureText,
      autocorrect: widget.model.autocorrect ?? true,
      smartDashesType: widget.model.smartDashesType?.parse,
      smartQuotesType: widget.model.smartQuotesType?.parse,
      maxLengthEnforcement: widget.model.maxLengthEnforcement?.parse,
      expands: widget.model.expands ?? false,
      keyboardAppearance: widget.model.keyboardAppearance?.parse,
      scrollPadding:
          widget.model.scrollPadding?.parse ?? const EdgeInsets.all(20),
      restorationId: widget.model.restorationId,
      enableIMEPersonalizedLearning:
          widget.model.enableIMEPersonalizedLearning ?? true,
      enableSuggestions: widget.model.enableSuggestions ?? true,
      enabled: widget.model.enabled,
      cursorWidth: widget.model.cursorWidth ?? 2.0,
      cursorHeight: widget.model.cursorHeight,
      cursorColor: widget.model.cursorColor?.toColor(context),
      style: widget.model.style?.parse(context),
      decoration: widget.model.decoration?.parse(context),
      inputFormatters: widget.model.inputFormatters
          ?.map(
            (inputFormatter) => inputFormatter.type.parse.format(
              inputFormatter.rule ?? "",
              mask: inputFormatter.mask,
            ),
          )
          .toList(),
      validator: (value) {
        return _validate(value, widget.model);
      },
    );
  }

  String? _validate(String? value, PhlutsTextFormField model) {
    if (value == null || !(model.validatorRules?.isNotEmpty ?? false)) {
      return null;
    }

    for (final validator in model.validatorRules!) {
      try {
        bool isValid;
        if (validator.rule == 'compare') {
          final targetId = validator.options?['fieldId'] as String?;
          final target = targetId == null
              ? null
              : widget.formScope?.formData[targetId]?.toString();
          isValid = value == target;
        } else {
          isValid = InputValidators.validate(
            validator.rule,
            value,
            options: validator.options,
          );
        }

        if (!isValid) return validator.message ?? 'Invalid input';
      } catch (e) {
        Log.e(e);
        return validator.message ?? 'Invalid input';
      }
    }

    return null;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
