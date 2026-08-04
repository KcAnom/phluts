import 'package:flutter/widgets.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/widgets/phluts_form/phluts_form_scope.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsRadioGroupParser extends PhlutsParser<PhlutsRadioGroup> {
  const PhlutsRadioGroupParser();

  @override
  String get type => WidgetType.radioGroup.name;

  @override
  PhlutsRadioGroup getModel(Map<String, dynamic> json) =>
      PhlutsRadioGroup.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsRadioGroup model) {
    return _RadioGroupWidget(model, PhlutsFormScope.of(context));
  }
}

class _RadioGroupWidget extends StatefulWidget {
  const _RadioGroupWidget(this.model, this.formScope);

  final PhlutsRadioGroup model;
  final PhlutsFormScope? formScope;

  @override
  State<_RadioGroupWidget> createState() => _RadioGroupWidgetState();
}

class _RadioGroupWidgetState extends State<_RadioGroupWidget> {
  dynamic _groupValue;

  @override
  void initState() {
    super.initState();
    setState(() {
      _groupValue = widget.model.groupValue;
    });

    // Initialize form data if id is provided
    if (widget.model.id != null && widget.formScope != null) {
      widget.formScope!.formData[widget.model.id!] = widget.model.groupValue;
    }
  }

  @override
  void didUpdateWidget(covariant _RadioGroupWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.model.groupValue != widget.model.groupValue) {
      _groupValue = widget.model.groupValue;

      // Save to form data if id is provided
      if (widget.model.id != null && widget.formScope != null) {
        widget.formScope!.formData[widget.model.id!] = widget.model.groupValue;
      }
    }
  }

  void _onChanged(dynamic value) {
    setState(() {
      _groupValue = value;
    });

    // Save to form data if id is provided
    if (widget.model.id != null && widget.formScope != null) {
      widget.formScope!.formData[widget.model.id!] = value;
    }

    // Call the onChanged action if provided
    if (widget.model.onChanged != null) {
      widget.model.onChanged!.parse(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return RadioGroup<dynamic>(
      groupValue: _groupValue,
      onChanged: _onChanged,
      child: widget.model.child?.parse(context) ?? const SizedBox.shrink(),
    );
  }
}
