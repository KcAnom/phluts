import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts/src/utils/variable_resolver.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSetValueParser extends PhlutsParser<PhlutsSetValue> {
  const PhlutsSetValueParser();

  @override
  String get type => WidgetType.setValue.name;

  @override
  PhlutsSetValue getModel(Map<String, dynamic> json) =>
      PhlutsSetValue.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsSetValue model) {
    return _SetValueWidget(model: model);
  }
}

class _SetValueWidget extends StatefulWidget {
  const _SetValueWidget({required this.model});

  final PhlutsSetValue model;

  @override
  State<_SetValueWidget> createState() => _SetValueWidgetState();
}

class _SetValueWidgetState extends State<_SetValueWidget> {
  final PhlutsRegistry _phlutsRegistry = PhlutsRegistry.instance;

  @override
  void initState() {
    super.initState();

    for (final value in widget.model.values) {
      _phlutsRegistry.setValue(value['key'] as String, value['value']);
    }
  }

  @override
  void dispose() {
    for (final value in widget.model.values) {
      _phlutsRegistry.removeValue(value['key'] as String);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.model.child == null) {
      return const SizedBox();
    }

    // Convert the PhlutsWidget to JSON, resolve variables, then parse it back
    final childJson = widget.model.child!.toJson();

    final resolvedJson = resolveVariablesInJson(childJson, _phlutsRegistry);

    return Phluts.fromJson(resolvedJson, context) ?? const SizedBox();
  }
}
