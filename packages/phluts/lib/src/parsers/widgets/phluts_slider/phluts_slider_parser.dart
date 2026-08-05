import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phluts/src/parsers/core/phluts_action_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_mouse_cursor_parser.dart';
import 'package:phluts/src/parsers/foundation/interaction/phluts_slider_interaction_parser.dart';
import 'package:phluts/src/parsers/widgets/phluts_form/phluts_form_scope.dart';
import 'package:phluts/src/utils/color_utils.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsSliderParser extends PhlutsParser<PhlutsSlider> {
  const PhlutsSliderParser();

  @override
  String get type => WidgetType.slider.name;

  @override
  PhlutsSlider getModel(Map<String, dynamic> json) =>
      PhlutsSlider.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsSlider model) {
    return _PhlutsSlider(model, PhlutsFormScope.of(context));
  }
}

class _PhlutsSlider extends StatefulWidget {
  const _PhlutsSlider(this.model, this.formScope);

  final PhlutsSlider model;
  final PhlutsFormScope? formScope;

  @override
  State<_PhlutsSlider> createState() => __PhlutsSliderState();
}

class __PhlutsSliderState extends State<_PhlutsSlider> {
  late double selectedValue;

  @override
  void initState() {
    selectedValue = widget.model.value;
    if (widget.model.id != null) {
      widget.formScope?.formData[widget.model.id!] = selectedValue;
    }
    super.initState();
  }

  void _onChanged(double value) {
    selectedValue = value;
    if (widget.model.id != null) {
      widget.formScope?.formData[widget.model.id!] = value;
    }
    widget.model.onChanged?.parse(context);

    setState(() {});
  }

  void _onChangeStart(double value) {
    widget.model.onChangeStart?.parse(context);
  }

  void _onChangeEnd(double value) {
    widget.model.onChangeEnd?.parse(context);
  }

  @override
  Widget build(BuildContext context) {
    final PhlutsSlider model = widget.model;
    final FocusNode focusNode = FocusNode();

    switch (model.sliderType ?? PhlutsSliderType.adaptive) {
      case PhlutsSliderType.material:
        return _buildMaterialSlider(model, focusNode, selectedValue);
      case PhlutsSliderType.adaptive:
        return _buildAdaptiveSlider(model, focusNode, selectedValue);
      case PhlutsSliderType.cupertino:
        return _buildCupertinoSlider(model, focusNode, selectedValue);
    }
  }

  Widget _buildMaterialSlider(
    PhlutsSlider model,
    FocusNode focusNode,
    double value,
  ) {
    return Slider(
      value: value,
      secondaryTrackValue: model.secondaryTrackValue,
      onChanged: (value) => _onChanged(value),
      onChangeStart: (value) => _onChangeStart(value),
      onChangeEnd: (value) => _onChangeEnd(value),
      min: model.min ?? 0.0,
      max: model.max ?? 1.0,
      divisions: model.divisions,
      label: model.label,
      activeColor: model.activeColor?.toColor(context),
      inactiveColor: model.inactiveColor?.toColor(context),
      secondaryActiveColor: model.secondaryActiveColor?.toColor(context),
      thumbColor: model.thumbColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        model.overlayColor?.toColor(context),
      ),
      mouseCursor: model.mouseCursor?.parse,
      focusNode: focusNode,
      autofocus: model.autofocus ?? false,
      allowedInteraction: model.allowedInteraction?.parse,
    );
  }

  Widget _buildAdaptiveSlider(
    PhlutsSlider model,
    FocusNode focusNode,
    double value,
  ) {
    return Slider.adaptive(
      value: value,
      secondaryTrackValue: model.secondaryTrackValue,
      onChanged: (value) => _onChanged(value),
      onChangeStart: (value) => _onChangeStart(value),
      onChangeEnd: (value) => _onChangeEnd(value),
      min: model.min ?? 0.0,
      max: model.max ?? 1.0,
      divisions: model.divisions,
      label: model.label,
      activeColor: model.activeColor?.toColor(context),
      inactiveColor: model.inactiveColor?.toColor(context),
      secondaryActiveColor: model.secondaryActiveColor?.toColor(context),
      thumbColor: model.thumbColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        model.overlayColor?.toColor(context),
      ),
      mouseCursor: model.mouseCursor?.parse,
      focusNode: focusNode,
      autofocus: model.autofocus ?? false,
      allowedInteraction: model.allowedInteraction?.parse,
    );
  }

  Widget _buildCupertinoSlider(
    PhlutsSlider model,
    FocusNode focusNode,
    double value,
  ) {
    return CupertinoSlider(
      value: value,
      onChanged: (value) => _onChanged(value),
      onChangeStart: (value) => _onChangeStart(value),
      onChangeEnd: (value) => _onChangeEnd(value),
      min: model.min ?? 0.0,
      max: model.max ?? 1.0,
      divisions: model.divisions,
      activeColor: model.activeColor?.toColor(context),
      thumbColor: model.thumbColor?.toColor(context) ?? CupertinoColors.white,
    );
  }
}
