import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_offset_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_align_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_input_type_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/parsers/foundation/theme/phluts_input_decoration_theme_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_dropdown_menu_entry_parser.dart';
import 'package:phluts/src/utils/input_formatters.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsDropdownMenuParser extends PhlutsParser<PhlutsDropdownMenu> {
  const PhlutsDropdownMenuParser();

  @override
  String get type => WidgetType.dropdownMenu.name;

  @override
  PhlutsDropdownMenu getModel(Map<String, dynamic> json) =>
      PhlutsDropdownMenu.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsDropdownMenu model) {
    return _DropDownMenuWidget(model: model);
  }
}

class _DropDownMenuWidget extends StatefulWidget {
  const _DropDownMenuWidget({required this.model});

  final PhlutsDropdownMenu model;

  @override
  State<_DropDownMenuWidget> createState() => _DropDownMenuWidgetState();
}

class _DropDownMenuWidgetState extends State<_DropDownMenuWidget> {
  final TextEditingController _controller = TextEditingController();
  final _focusNode = FocusNode();
  late final PhlutsDropdownMenu model;

  @override
  void initState() {
    model = widget.model;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      initialSelection: model.initialSelection,
      focusNode: _focusNode,
      controller: _controller,
      dropdownMenuEntries:
          model.dropdownMenuEntries
              ?.map((e) => e.parse(context))
              .whereType<DropdownMenuEntry<Object>>()
              .toList() ??
          const <DropdownMenuEntry<Object>>[],
      enabled: model.enabled ?? true,
      width: model.width,
      menuHeight: model.menuHeight,
      leadingIcon: model.leadingIcon?.parse(context),
      trailingIcon: model.trailingIcon?.parse(context),
      label: model.label?.parse(context),
      hintText: model.hintText,
      helperText: model.helperText,
      errorText: model.errorText,
      selectedTrailingIcon: model.selectedTrailingIcon?.parse(context),
      enableFilter: model.enableFilter ?? true,
      enableSearch: model.enableSearch ?? true,
      keyboardType: model.keyboardType?.parse,
      textStyle: model.textStyle?.parse(context),
      textAlign: model.textAlign?.parse ?? TextAlign.start,
      inputDecorationTheme: model.inputDecorationTheme?.parse(context),
      requestFocusOnTap: model.requestFocusOnTap ?? false,
      expandedInsets: model.expandedInsets?.parse,
      alignmentOffset: model.alignmentOffset?.parse,
      inputFormatters: (model.inputFormatters ?? const <PhlutsInputFormatter>[])
          .map<TextInputFormatter>((PhlutsInputFormatter formatter) {
            switch (formatter.type) {
              case PhlutsInputFormatterType.allow:
                return InputFormatterType.allow.format(formatter.rule ?? '');
              case PhlutsInputFormatterType.deny:
                return InputFormatterType.deny.format(formatter.rule ?? '');
              case PhlutsInputFormatterType.mask:
                return InputFormatterType.mask.format(
                  formatter.rule ?? '',
                  mask: formatter.mask,
                );
            }
          })
          .toList(),
    );
  }
}
