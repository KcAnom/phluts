// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phluts_text_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhlutsTextField _$PhlutsTextFieldFromJson(
  Map<String, dynamic> json,
) => PhlutsTextField(
  initialValue: json['initialValue'] as String?,
  decoration: json['decoration'] == null
      ? null
      : PhlutsInputDecoration.fromJson(
          json['decoration'] as Map<String, dynamic>,
        ),
  keyboardType: $enumDecodeNullable(
    _$PhlutsTextInputTypeEnumMap,
    json['keyboardType'],
  ),
  textInputAction: $enumDecodeNullable(
    _$PhlutsTextInputActionEnumMap,
    json['textInputAction'],
  ),
  textCapitalization: $enumDecodeNullable(
    _$PhlutsTextCapitalizationEnumMap,
    json['textCapitalization'],
  ),
  style: json['style'] == null ? null : PhlutsTextStyle.fromJson(json['style']),
  textAlign: $enumDecodeNullable(_$PhlutsTextAlignEnumMap, json['textAlign']),
  textDirection: $enumDecodeNullable(
    _$PhlutsTextDirectionEnumMap,
    json['textDirection'],
  ),
  readOnly: json['readOnly'] as bool?,
  showCursor: json['showCursor'] as bool?,
  autofocus: json['autofocus'] as bool?,
  obscuringCharacter: json['obscuringCharacter'] as String?,
  obscureText: json['obscureText'] as bool?,
  autocorrect: json['autocorrect'] as bool?,
  enableSuggestions: json['enableSuggestions'] as bool?,
  maxLines: (json['maxLines'] as num?)?.toInt(),
  minLines: (json['minLines'] as num?)?.toInt(),
  expands: json['expands'] as bool?,
  maxLength: (json['maxLength'] as num?)?.toInt(),
  enabled: json['enabled'] as bool?,
  cursorColor: json['cursorColor'] as String?,
  cursorWidth: const DoubleConverter().fromJson(json['cursorWidth']),
  cursorHeight: const DoubleConverter().fromJson(json['cursorHeight']),
  scrollPadding: json['scrollPadding'] == null
      ? null
      : PhlutsEdgeInsets.fromJson(json['scrollPadding']),
  enableInteractiveSelection: json['enableInteractiveSelection'] as bool?,
  mouseCursor: $enumDecodeNullable(
    _$PhlutsMouseCursorEnumMap,
    json['mouseCursor'],
  ),
  dragStartBehavior: $enumDecodeNullable(
    _$PhlutsDragStartBehaviorEnumMap,
    json['dragStartBehavior'],
  ),
  scrollPhysics: $enumDecodeNullable(
    _$PhlutsScrollPhysicsEnumMap,
    json['scrollPhysics'],
  ),
  restorationId: json['restorationId'] as String?,
  clipBehavior: $enumDecodeNullable(_$PhlutsClipEnumMap, json['clipBehavior']),
  autofillHints: (json['autofillHints'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  onTap: json['onTap'] == null
      ? null
      : PhlutsAction.fromJson(json['onTap'] as Map<String, dynamic>),
  onChanged: json['onChanged'] == null
      ? null
      : PhlutsAction.fromJson(json['onChanged'] as Map<String, dynamic>),
  onEditingComplete: json['onEditingComplete'] == null
      ? null
      : PhlutsAction.fromJson(
          json['onEditingComplete'] as Map<String, dynamic>,
        ),
  onSubmitted: json['onSubmitted'] == null
      ? null
      : PhlutsAction.fromJson(json['onSubmitted'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhlutsTextFieldToJson(
  PhlutsTextField instance,
) => <String, dynamic>{
  'initialValue': instance.initialValue,
  'decoration': instance.decoration?.toJson(),
  'keyboardType': _$PhlutsTextInputTypeEnumMap[instance.keyboardType],
  'textInputAction': _$PhlutsTextInputActionEnumMap[instance.textInputAction],
  'textCapitalization':
      _$PhlutsTextCapitalizationEnumMap[instance.textCapitalization],
  'style': instance.style?.toJson(),
  'textAlign': _$PhlutsTextAlignEnumMap[instance.textAlign],
  'textDirection': _$PhlutsTextDirectionEnumMap[instance.textDirection],
  'readOnly': instance.readOnly,
  'showCursor': instance.showCursor,
  'autofocus': instance.autofocus,
  'obscuringCharacter': instance.obscuringCharacter,
  'obscureText': instance.obscureText,
  'autocorrect': instance.autocorrect,
  'enableSuggestions': instance.enableSuggestions,
  'maxLines': instance.maxLines,
  'minLines': instance.minLines,
  'expands': instance.expands,
  'maxLength': instance.maxLength,
  'enabled': instance.enabled,
  'cursorColor': instance.cursorColor,
  'cursorWidth': const DoubleConverter().toJson(instance.cursorWidth),
  'cursorHeight': const DoubleConverter().toJson(instance.cursorHeight),
  'scrollPadding': instance.scrollPadding?.toJson(),
  'enableInteractiveSelection': instance.enableInteractiveSelection,
  'mouseCursor': _$PhlutsMouseCursorEnumMap[instance.mouseCursor],
  'dragStartBehavior':
      _$PhlutsDragStartBehaviorEnumMap[instance.dragStartBehavior],
  'scrollPhysics': _$PhlutsScrollPhysicsEnumMap[instance.scrollPhysics],
  'restorationId': instance.restorationId,
  'clipBehavior': _$PhlutsClipEnumMap[instance.clipBehavior],
  'autofillHints': instance.autofillHints,
  'onTap': instance.onTap?.toJson(),
  'onChanged': instance.onChanged?.toJson(),
  'onEditingComplete': instance.onEditingComplete?.toJson(),
  'onSubmitted': instance.onSubmitted?.toJson(),
  'type': instance.type,
};

const _$PhlutsTextInputTypeEnumMap = {
  PhlutsTextInputType.text: 'text',
  PhlutsTextInputType.multiline: 'multiline',
  PhlutsTextInputType.number: 'number',
  PhlutsTextInputType.phone: 'phone',
  PhlutsTextInputType.datetime: 'datetime',
  PhlutsTextInputType.emailAddress: 'emailAddress',
  PhlutsTextInputType.url: 'url',
  PhlutsTextInputType.visiblePassword: 'visiblePassword',
  PhlutsTextInputType.name: 'name',
  PhlutsTextInputType.streetAddress: 'streetAddress',
  PhlutsTextInputType.none: 'none',
};

const _$PhlutsTextInputActionEnumMap = {
  PhlutsTextInputAction.none: 'none',
  PhlutsTextInputAction.unspecified: 'unspecified',
  PhlutsTextInputAction.done: 'done',
  PhlutsTextInputAction.go: 'go',
  PhlutsTextInputAction.search: 'search',
  PhlutsTextInputAction.send: 'send',
  PhlutsTextInputAction.next: 'next',
  PhlutsTextInputAction.previous: 'previous',
  PhlutsTextInputAction.continueAction: 'continueAction',
  PhlutsTextInputAction.join: 'join',
  PhlutsTextInputAction.route: 'route',
  PhlutsTextInputAction.emergencyCall: 'emergencyCall',
  PhlutsTextInputAction.newline: 'newline',
};

const _$PhlutsTextCapitalizationEnumMap = {
  PhlutsTextCapitalization.none: 'none',
  PhlutsTextCapitalization.characters: 'characters',
  PhlutsTextCapitalization.words: 'words',
  PhlutsTextCapitalization.sentences: 'sentences',
};

const _$PhlutsTextAlignEnumMap = {
  PhlutsTextAlign.left: 'left',
  PhlutsTextAlign.right: 'right',
  PhlutsTextAlign.center: 'center',
  PhlutsTextAlign.justify: 'justify',
  PhlutsTextAlign.start: 'start',
  PhlutsTextAlign.end: 'end',
};

const _$PhlutsTextDirectionEnumMap = {
  PhlutsTextDirection.rtl: 'rtl',
  PhlutsTextDirection.ltr: 'ltr',
};

const _$PhlutsMouseCursorEnumMap = {
  PhlutsMouseCursor.none: 'none',
  PhlutsMouseCursor.basic: 'basic',
  PhlutsMouseCursor.click: 'click',
  PhlutsMouseCursor.forbidden: 'forbidden',
  PhlutsMouseCursor.wait: 'wait',
  PhlutsMouseCursor.progress: 'progress',
  PhlutsMouseCursor.contextMenu: 'contextMenu',
  PhlutsMouseCursor.help: 'help',
  PhlutsMouseCursor.text: 'text',
  PhlutsMouseCursor.verticalText: 'verticalText',
  PhlutsMouseCursor.cell: 'cell',
  PhlutsMouseCursor.precise: 'precise',
  PhlutsMouseCursor.move: 'move',
  PhlutsMouseCursor.grab: 'grab',
  PhlutsMouseCursor.grabbing: 'grabbing',
  PhlutsMouseCursor.noDrop: 'noDrop',
  PhlutsMouseCursor.alias: 'alias',
  PhlutsMouseCursor.copy: 'copy',
  PhlutsMouseCursor.disappearing: 'disappearing',
  PhlutsMouseCursor.allScroll: 'allScroll',
  PhlutsMouseCursor.resizeLeftRight: 'resizeLeftRight',
  PhlutsMouseCursor.resizeUpDown: 'resizeUpDown',
  PhlutsMouseCursor.resizeUpLeftDownRight: 'resizeUpLeftDownRight',
  PhlutsMouseCursor.resizeUpRightDownLeft: 'resizeUpRightDownLeft',
  PhlutsMouseCursor.resizeUp: 'resizeUp',
  PhlutsMouseCursor.resizeDown: 'resizeDown',
  PhlutsMouseCursor.resizeLeft: 'resizeLeft',
  PhlutsMouseCursor.resizeRight: 'resizeRight',
  PhlutsMouseCursor.resizeUpLeft: 'resizeUpLeft',
  PhlutsMouseCursor.resizeUpRight: 'resizeUpRight',
  PhlutsMouseCursor.resizeDownLeft: 'resizeDownLeft',
  PhlutsMouseCursor.resizeDownRight: 'resizeDownRight',
  PhlutsMouseCursor.resizeColumn: 'resizeColumn',
  PhlutsMouseCursor.resizeRow: 'resizeRow',
  PhlutsMouseCursor.zoomIn: 'zoomIn',
  PhlutsMouseCursor.zoomOut: 'zoomOut',
};

const _$PhlutsDragStartBehaviorEnumMap = {
  PhlutsDragStartBehavior.down: 'down',
  PhlutsDragStartBehavior.start: 'start',
};

const _$PhlutsScrollPhysicsEnumMap = {
  PhlutsScrollPhysics.never: 'never',
  PhlutsScrollPhysics.bouncing: 'bouncing',
  PhlutsScrollPhysics.clamping: 'clamping',
  PhlutsScrollPhysics.fixed: 'fixed',
  PhlutsScrollPhysics.page: 'page',
};

const _$PhlutsClipEnumMap = {
  PhlutsClip.none: 'none',
  PhlutsClip.hardEdge: 'hardEdge',
  PhlutsClip.antiAlias: 'antiAlias',
  PhlutsClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
