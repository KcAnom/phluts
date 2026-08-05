import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts/src/parsers/foundation/ui_components/phluts_options_view_open_direction_parser.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsAutoCompleteParser extends PhlutsParser<PhlutsAutoComplete> {
  const PhlutsAutoCompleteParser();

  @override
  String get type => WidgetType.autocomplete.name;

  @override
  PhlutsAutoComplete getModel(Map<String, dynamic> json) =>
      PhlutsAutoComplete.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsAutoComplete model) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return model.options.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String val) => model.onSelected?.parse(context),
      optionsMaxHeight: model.optionsMaxHeight ?? 200,
      optionsViewOpenDirection:
          (model.optionsViewOpenDirection ??
                  PhlutsOptionsViewOpenDirection.down)
              .parse,
      initialValue: model.initialValue != null
          ? TextEditingValue(text: model.initialValue!)
          : null,
    );
  }
}
