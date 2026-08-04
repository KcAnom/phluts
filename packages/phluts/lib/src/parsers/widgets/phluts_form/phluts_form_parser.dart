import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_widget_parser.dart';
import 'package:phluts/src/parsers/foundation/forms/phluts_autovalidate_mode_parser.dart';
import 'package:phluts/src/parsers/widgets/phluts_form/phluts_form_scope.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsFormParser extends PhlutsParser<PhlutsForm> {
  const PhlutsFormParser();

  @override
  PhlutsForm getModel(Map<String, dynamic> json) => PhlutsForm.fromJson(json);

  @override
  String get type => WidgetType.form.name;

  @override
  Widget parse(BuildContext context, PhlutsForm model) {
    return _FormWidget(model);
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget(this.model);

  final PhlutsForm model;

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final Map<String, dynamic> _formData = {};

  final _formKey = GlobalKey<FormState>();

  void setFormData({required String key, required value}) {
    _formData[key] = value;
  }

  @override
  Widget build(BuildContext context) {
    return PhlutsFormScope(
      formData: _formData,
      formKey: _formKey,
      child: Builder(
        builder: (context) {
          return Form(
            key: PhlutsFormScope.of(context)?.formKey,
            autovalidateMode: widget.model.autovalidateMode?.parse,
            child: widget.model.child?.parse(context) ?? const SizedBox(),
          );
        },
      ),
    );
  }
}
