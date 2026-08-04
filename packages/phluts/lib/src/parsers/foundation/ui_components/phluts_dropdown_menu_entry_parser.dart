import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/theme/themes.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsDropdownMenuEntryParser on PhlutsDropdownMenuEntry? {
  DropdownMenuEntry? parse(BuildContext context) {
    return DropdownMenuEntry(
      value: this?.value,
      label: this?.label ?? '',
      labelWidget: this?.labelWidget?.parse(context),
      leadingIcon: this?.leadingIcon?.parse(context),
      enabled: this?.enabled ?? true,
      style: this?.style?.parseTextButton(context),
    );
  }
}
