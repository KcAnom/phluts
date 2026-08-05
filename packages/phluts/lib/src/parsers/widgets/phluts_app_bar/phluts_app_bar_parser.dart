import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

class PhlutsAppBarParser extends PhlutsParser<PhlutsAppBar> {
  const PhlutsAppBarParser();

  @override
  String get type => WidgetType.appBar.name;

  @override
  PhlutsAppBar getModel(Map<String, dynamic> json) =>
      PhlutsAppBar.fromJson(json);

  @override
  Widget parse(BuildContext context, PhlutsAppBar model) {
    return AppBar(
      leading: model.leading?.parse(context),
      automaticallyImplyLeading: model.automaticallyImplyLeading ?? true,
      title: model.title?.parse(context),
      actions: model.actions.parseList(context),
      flexibleSpace: model.flexibleSpace?.parse(context),
      bottom: model.bottom?.parsePreferredSizeWidget(context),
      elevation: model.elevation,
      scrolledUnderElevation: model.scrolledUnderElevation,
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      // shape: shape,
      backgroundColor: model.backgroundColor?.toColor(context),
      foregroundColor: model.foregroundColor?.toColor(context),
      // iconTheme: iconTheme,
      // actionsIconTheme: actionsIconTheme,
      primary: model.primary ?? true,
      centerTitle: model.centerTitle,
      excludeHeaderSemantics: model.excludeHeaderSemantics ?? false,
      titleSpacing: model.titleSpacing,
      toolbarOpacity: model.toolbarOpacity ?? 1.0,
      bottomOpacity: model.bottomOpacity ?? 1.0,
      toolbarHeight: model.toolbarHeight,
      leadingWidth: model.leadingWidth,
      toolbarTextStyle: model.toolbarTextStyle?.parse(context),
      titleTextStyle: model.titleTextStyle?.parse(context),
      systemOverlayStyle: model.systemOverlayStyle?.parse(context),
      forceMaterialTransparency: model.forceMaterialTransparency ?? false,
      useDefaultSemanticsOrder: model.useDefaultSemanticsOrder ?? true,
      clipBehavior: model.clipBehavior?.parse,
      actionsPadding: model.actionsPadding?.parse,
    );
  }
}
