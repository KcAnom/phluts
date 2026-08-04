import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

class PhlutsSwitchParser extends PhlutsParser<PhlutsSwitch> {
  const PhlutsSwitchParser();

  @override
  String get type => "switch";

  @override
  PhlutsSwitch getModel(Map<String, dynamic> json) => PhlutsSwitch.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsSwitch model) {
    return _SwitchWidget(model: model);
  }
}

class _SwitchWidget extends StatefulWidget {
  const _SwitchWidget({required this.model});

  final PhlutsSwitch model;

  @override
  State<_SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<_SwitchWidget> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    isSelected = widget.model.value ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final PhlutsSwitch model = widget.model;
    final PhlutsSwitchType type = model.switchType ?? PhlutsSwitchType.material;

    switch (type) {
      case PhlutsSwitchType.cupertino:
        return _buildCupertinoSwitch(context, model);
      case PhlutsSwitchType.adaptive:
        return _buildAdaptiveSwitch(context, model);
      case PhlutsSwitchType.material:
        return _buildMaterialSwitch(context, model);
    }
  }

  /// Change the value of the switch as the user toggles it.
  void _onChanged(bool value) {
    isSelected = value;
    widget.model.onChanged?.parse(context);
    setState(() {});
  }

  Icon? thumbIconWidget(BuildContext context, Map<String, dynamic>? thumbIcon) {
    if (thumbIcon == null) return null;

    final Widget? widget = Phluts.fromJson(thumbIcon, context);
    if (widget != null && widget is Icon) {
      return widget;
    }

    return null;
  }

  Widget _buildCupertinoSwitch(BuildContext context, PhlutsSwitch model) {
    return CupertinoSwitch(
      value: isSelected,
      onChanged: _onChanged,
      activeTrackColor: model.activeTrackColor?.toColor(context),
      inactiveTrackColor: model.inactiveTrackColor?.toColor(context),
      thumbColor: model.thumbColor?.toColor(context),
      applyTheme: model.applyTheme,
      focusColor: model.focusColor?.toColor(context),
      onLabelColor: model.onLabelColor?.toColor(context),
      offLabelColor: model.offLabelColor?.toColor(context),
      autofocus: model.autofocus ?? false,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
    );
  }

  Widget _buildAdaptiveSwitch(BuildContext context, PhlutsSwitch model) {
    return Switch.adaptive(
      value: isSelected,
      onChanged: _onChanged,
      activeThumbColor: model.activeThumbColor?.toColor(context),
      activeTrackColor: model.activeTrackColor?.toColor(context),
      inactiveThumbColor: model.inactiveThumbColor?.toColor(context),
      inactiveTrackColor: model.inactiveTrackColor?.toColor(context),
      activeThumbImage: model.activeThumbImage != null
          ? NetworkImage(model.activeThumbImage!)
          : null,
      inactiveThumbImage: model.inactiveThumbImage != null
          ? NetworkImage(model.inactiveThumbImage!)
          : null,
      materialTapTargetSize: model.materialTapTargetSize?.parse,
      thumbColor: WidgetStateProperty.all(model.thumbColor?.toColor(context)),
      trackColor: WidgetStateProperty.all(model.trackColor?.toColor(context)),
      trackOutlineColor: WidgetStateProperty.all(
        model.trackOutlineColor?.toColor(context),
      ),
      trackOutlineWidth: WidgetStateProperty.all(model.trackOutlineWidth),
      thumbIcon: WidgetStateProperty.all(
        model.thumbIcon?.parse(context) as Icon?,
      ),
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        model.overlayColor?.toColor(context),
      ),
      splashRadius: model.splashRadius ?? 0.0,
      autofocus: model.autofocus ?? false,
      applyCupertinoTheme: model.applyCupertinoTheme,
    );
  }

  Widget _buildMaterialSwitch(BuildContext context, PhlutsSwitch model) {
    return Switch(
      value: isSelected,
      onChanged: _onChanged,
      activeThumbColor: model.activeThumbColor.toColor(context),
      activeTrackColor: model.activeTrackColor.toColor(context),
      inactiveThumbColor: model.inactiveThumbColor.toColor(context),
      inactiveTrackColor: model.inactiveTrackColor.toColor(context),
      activeThumbImage: model.activeThumbImage != null
          ? NetworkImage(model.activeThumbImage!)
          : null,
      inactiveThumbImage: model.inactiveThumbImage != null
          ? NetworkImage(model.inactiveThumbImage!)
          : null,
      thumbColor: WidgetStateProperty.all(model.thumbColor?.toColor(context)),
      trackColor: WidgetStateProperty.all(model.trackColor?.toColor(context)),
      trackOutlineColor: WidgetStateProperty.all(
        model.trackOutlineColor?.toColor(context),
      ),
      trackOutlineWidth: WidgetStateProperty.all(model.trackOutlineWidth),
      thumbIcon: WidgetStateProperty.all(
        model.thumbIcon?.parse(context) as Icon?,
      ),
      materialTapTargetSize: model.materialTapTargetSize?.parse,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        model.overlayColor?.toColor(context),
      ),
      splashRadius: model.splashRadius ?? 0.0,
      autofocus: model.autofocus ?? false,
    );
  }
}
