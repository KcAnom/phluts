import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts/src/parsers/foundation/decoration/phluts_input_decoration_parser.dart';
import 'package:phluts/src/parsers/foundation/geometry/phluts_edge_insets_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_drag_start_behavior_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_mouse_cursor_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_scroll_physics_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_clip_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_align_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_capitalization_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_direction_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_input_action_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_input_type_parser.dart';
import 'package:phluts/src/parsers/foundation/text/phluts_text_style_parser.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsTextFieldParser extends PhlutsParser<PhlutsTextField> {
  const PhlutsTextFieldParser({this.controller, this.focusNode});

  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  PhlutsTextField getModel(Map<String, dynamic> json) =>
      PhlutsTextField.fromJson(json);

  @override
  String get type => WidgetType.textField.name;

  @override
  Widget parse(BuildContext context, PhlutsTextField model) {
    if ((model.initialValue ?? '').isNotEmpty) {
      controller?.text = model.initialValue!;
    }

    return TextField(
      controller:
          controller ?? TextEditingController(text: model.initialValue ?? ''),
      focusNode: focusNode,
      keyboardType: model.keyboardType?.parse,
      textInputAction: model.textInputAction?.parse,
      textCapitalization:
          model.textCapitalization?.parse ?? TextCapitalization.none,
      textAlign: model.textAlign?.parse ?? TextAlign.start,
      textDirection: model.textDirection?.parse,
      readOnly: model.readOnly ?? false,
      showCursor: model.showCursor,
      autofocus: model.autofocus ?? false,
      obscuringCharacter: model.obscuringCharacter ?? '•',
      maxLines: model.maxLines,
      minLines: model.minLines,
      maxLength: model.maxLength,
      obscureText: model.obscureText ?? false,
      enableSuggestions: model.enableSuggestions ?? true,
      enabled: model.enabled,
      expands: model.expands ?? false,
      cursorWidth: model.cursorWidth ?? 2.0,
      cursorHeight: model.cursorHeight,
      cursorColor: model.cursorColor?.toColor(context),
      style: model.style?.parse(context),
      decoration: model.decoration?.parse(context),
      scrollPadding: model.scrollPadding?.parse ?? const EdgeInsets.all(20.0),
      enableInteractiveSelection: model.enableInteractiveSelection,
      mouseCursor: model.mouseCursor?.parse,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      scrollPhysics: model.scrollPhysics?.parse,
      restorationId: model.restorationId,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      autofillHints: model.autofillHints,
      onTap: model.onTap == null ? null : () => model.onTap!.parse(context),
      onChanged: model.onChanged == null
          ? null
          : (value) => model.onChanged!.parse(context),
      onEditingComplete: model.onEditingComplete == null
          ? null
          : () => model.onEditingComplete!.parse(context),
      onSubmitted: model.onSubmitted == null
          ? null
          : (value) => model.onSubmitted!.parse(context),
    );
  }
}
