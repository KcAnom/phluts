import 'package:flutter/material.dart';
import 'package:phluts/src/framework/phluts.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_mouse_cursor_parser.dart';
import 'package:phluts/src/parsers/foundation/layout/phluts_material_tap_target_size_parser.dart';
import 'package:phluts/src/parsers/widgets/phluts_form/phluts_form_scope.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsCheckBoxParser extends PhlutsParser<PhlutsCheckBox> {
  const PhlutsCheckBoxParser();

  @override
  String get type => WidgetType.checkBox.name;

  @override
  PhlutsCheckBox getModel(Map<String, dynamic> json) =>
      PhlutsCheckBox.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsCheckBox model) {
    return _PhlutsCheckBox(model, PhlutsFormScope.of(context));
  }
}

class _PhlutsCheckBox extends StatefulWidget {
  const _PhlutsCheckBox(this.model, this.formScope);

  final PhlutsCheckBox model;
  final PhlutsFormScope? formScope;

  @override
  State<_PhlutsCheckBox> createState() => _PhlutsCheckBoxState();
}

class _PhlutsCheckBoxState extends State<_PhlutsCheckBox> {
  bool? _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.model.value;
    if (widget.model.id != null && widget.formScope != null) {
      widget.formScope!.formData[widget.model.id!] = widget.model.value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _currentValue,
      tristate: widget.model.tristate ?? false,
      onChanged: (bool? value) {
        setState(() {
          _currentValue = value ?? false;
        });
        if (widget.model.id != null) {
          widget.formScope?.formData[widget.model.id!] = value;
        }
        if (widget.model.onChanged != null) {
          Phluts.onCallFromJson(widget.model.onChanged!.toJson(), context);
        }
      },
      mouseCursor: widget.model.mouseCursor?.parse,
      activeColor: widget.model.activeColor?.toColor(context),
      fillColor: widget.model.fillColor != null
          ? WidgetStateProperty.all(widget.model.fillColor!.toColor(context))
          : null,
      checkColor: widget.model.checkColor?.toColor(context),
      focusColor: widget.model.focusColor?.toColor(context),
      hoverColor: widget.model.hoverColor?.toColor(context),
      overlayColor: widget.model.overlayColor != null
          ? WidgetStateProperty.all(widget.model.overlayColor!.toColor(context))
          : null,
      splashRadius: widget.model.splashRadius,
      materialTapTargetSize: widget.model.materialTapTargetSize?.parse,
      autofocus: widget.model.autofocus ?? false,
      isError: widget.model.isError ?? false,
    );
  }
}
