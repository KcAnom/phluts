// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_scaffold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsScaffold _$PhlutsScaffoldFromJson(Map<String, dynamic> json) => PhlutsScaffold(
  appBar: json['appBar'] == null
      ? null
      : PhlutsWidget.fromJson(json['appBar'] as Map<String, dynamic>),
  backgroundColor: json['backgroundColor'] as String?,
  body: json['body'] == null
      ? null
      : PhlutsWidget.fromJson(json['body'] as Map<String, dynamic>),
  bottomNavigationBar: json['bottomNavigationBar'] == null
      ? null
      : PhlutsWidget.fromJson(
          json['bottomNavigationBar'] as Map<String, dynamic>,
        ),
  bottomSheet: json['bottomSheet'] == null
      ? null
      : PhlutsWidget.fromJson(json['bottomSheet'] as Map<String, dynamic>),
  drawer: json['drawer'] == null
      ? null
      : PhlutsWidget.fromJson(json['drawer'] as Map<String, dynamic>),
  drawerDragStartBehavior: $enumDecodeNullable(
    _$PhlutsDragStartBehaviorEnumMap,
    json['drawerDragStartBehavior'],
  ),
  drawerEdgeDragWidth: (json['drawerEdgeDragWidth'] as num?)?.toDouble(),
  drawerEnableOpenDragGesture: json['drawerEnableOpenDragGesture'] as bool?,
  drawerScrimColor: json['drawerScrimColor'] as String?,
  endDrawer: json['endDrawer'] == null
      ? null
      : PhlutsWidget.fromJson(json['endDrawer'] as Map<String, dynamic>),
  endDrawerEnableOpenDragGesture:
      json['endDrawerEnableOpenDragGesture'] as bool?,
  extendBody: json['extendBody'] as bool?,
  extendBodyBehindAppBar: json['extendBodyBehindAppBar'] as bool?,
  floatingActionButton: json['floatingActionButton'] == null
      ? null
      : PhlutsWidget.fromJson(
          json['floatingActionButton'] as Map<String, dynamic>,
        ),
  floatingActionButtonLocation: $enumDecodeNullable(
    _$PhlutsFloatingActionButtonLocationEnumMap,
    json['floatingActionButtonLocation'],
  ),
  onDrawerChanged: json['onDrawerChanged'] == null
      ? null
      : PhlutsAction.fromJson(json['onDrawerChanged'] as Map<String, dynamic>),
  onEndDrawerChanged: json['onEndDrawerChanged'] == null
      ? null
      : PhlutsAction.fromJson(json['onEndDrawerChanged'] as Map<String, dynamic>),
  persistentFooterAlignment: $enumDecodeNullable(
    _$PhlutsAlignmentDirectionalEnumMap,
    json['persistentFooterAlignment'],
  ),
  persistentFooterButtons: (json['persistentFooterButtons'] as List<dynamic>?)
      ?.map((e) => PhlutsWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
  primary: json['primary'] as bool?,
  resizeToAvoidBottomInset: json['resizeToAvoidBottomInset'] as bool?,
  restorationId: json['restorationId'] as String?,
);

Map<String, dynamic> _$PhlutsScaffoldToJson(PhlutsScaffold instance) =>
    <String, dynamic>{
      'appBar': instance.appBar?.toJson(),
      'backgroundColor': instance.backgroundColor,
      'body': instance.body?.toJson(),
      'bottomNavigationBar': instance.bottomNavigationBar?.toJson(),
      'bottomSheet': instance.bottomSheet?.toJson(),
      'drawer': instance.drawer?.toJson(),
      'drawerDragStartBehavior':
          _$PhlutsDragStartBehaviorEnumMap[instance.drawerDragStartBehavior],
      'drawerEdgeDragWidth': instance.drawerEdgeDragWidth,
      'drawerEnableOpenDragGesture': instance.drawerEnableOpenDragGesture,
      'drawerScrimColor': instance.drawerScrimColor,
      'endDrawer': instance.endDrawer?.toJson(),
      'endDrawerEnableOpenDragGesture': instance.endDrawerEnableOpenDragGesture,
      'extendBody': instance.extendBody,
      'extendBodyBehindAppBar': instance.extendBodyBehindAppBar,
      'floatingActionButton': instance.floatingActionButton?.toJson(),
      'floatingActionButtonLocation':
          _$PhlutsFloatingActionButtonLocationEnumMap[instance
              .floatingActionButtonLocation],
      'onDrawerChanged': instance.onDrawerChanged?.toJson(),
      'onEndDrawerChanged': instance.onEndDrawerChanged?.toJson(),
      'persistentFooterAlignment':
          _$PhlutsAlignmentDirectionalEnumMap[instance.persistentFooterAlignment],
      'persistentFooterButtons': instance.persistentFooterButtons
          ?.map((e) => e.toJson())
          .toList(),
      'primary': instance.primary,
      'resizeToAvoidBottomInset': instance.resizeToAvoidBottomInset,
      'restorationId': instance.restorationId,
      'type': instance.type,
    };

const _$PhlutsDragStartBehaviorEnumMap = {
  PhlutsDragStartBehavior.down: 'down',
  PhlutsDragStartBehavior.start: 'start',
};

const _$PhlutsFloatingActionButtonLocationEnumMap = {
  PhlutsFloatingActionButtonLocation.startTop: 'startTop',
  PhlutsFloatingActionButtonLocation.miniStartTop: 'miniStartTop',
  PhlutsFloatingActionButtonLocation.centerTop: 'centerTop',
  PhlutsFloatingActionButtonLocation.miniCenterTop: 'miniCenterTop',
  PhlutsFloatingActionButtonLocation.endTop: 'endTop',
  PhlutsFloatingActionButtonLocation.miniEndTop: 'miniEndTop',
  PhlutsFloatingActionButtonLocation.startFloat: 'startFloat',
  PhlutsFloatingActionButtonLocation.miniStartFloat: 'miniStartFloat',
  PhlutsFloatingActionButtonLocation.centerFloat: 'centerFloat',
  PhlutsFloatingActionButtonLocation.miniCenterFloat: 'miniCenterFloat',
  PhlutsFloatingActionButtonLocation.endFloat: 'endFloat',
  PhlutsFloatingActionButtonLocation.miniEndFloat: 'miniEndFloat',
  PhlutsFloatingActionButtonLocation.startDocked: 'startDocked',
  PhlutsFloatingActionButtonLocation.miniStartDocked: 'miniStartDocked',
  PhlutsFloatingActionButtonLocation.centerDocked: 'centerDocked',
  PhlutsFloatingActionButtonLocation.miniCenterDocked: 'miniCenterDocked',
  PhlutsFloatingActionButtonLocation.endDocked: 'endDocked',
  PhlutsFloatingActionButtonLocation.miniEndDocked: 'miniEndDocked',
};

const _$PhlutsAlignmentDirectionalEnumMap = {
  PhlutsAlignmentDirectional.topStart: 'topStart',
  PhlutsAlignmentDirectional.topCenter: 'topCenter',
  PhlutsAlignmentDirectional.topEnd: 'topEnd',
  PhlutsAlignmentDirectional.centerStart: 'centerStart',
  PhlutsAlignmentDirectional.center: 'center',
  PhlutsAlignmentDirectional.centerEnd: 'centerEnd',
  PhlutsAlignmentDirectional.bottomStart: 'bottomStart',
  PhlutsAlignmentDirectional.bottomCenter: 'bottomCenter',
  PhlutsAlignmentDirectional.bottomEnd: 'bottomEnd',
};
