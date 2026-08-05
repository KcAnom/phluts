import 'package:phluts/src/framework/phluts_registry.dart';
import 'package:phluts_core/phluts_core.dart';

dynamic resolveVariablesInJson(dynamic json, PhlutsRegistry registry) {
  if (json is String) {
    // Replace all {{variable_name}} with their values from registry
    return json.replaceAllMapped(RegExp(r'{{(.*?)}}'), (match) {
      final variableName = match.group(1)?.trim();
      final value = registry.getValue(variableName ?? '');
      return value != null ? value.toString() : match.group(0) ?? '';
    });
  } else if (json is Map<String, dynamic>) {
    // A setValue node writes its own variables in initState, so its subtree
    // must stay unresolved until that has run. Descending into it here
    // substitutes the children against the registry state from *before* the
    // write, and _SetValueWidget.build then re-resolves a string that no
    // longer holds a placeholder — a no-op — so the stale value is what
    // renders. Callers guarding only the node handed to them cover the one
    // case where this cannot happen: a setValue at the root.
    if (json['type'] == WidgetType.setValue.name) return json;
    return json.map(
      (key, value) => MapEntry(key, resolveVariablesInJson(value, registry)),
    );
  } else if (json is List) {
    return json.map((item) => resolveVariablesInJson(item, registry)).toList();
  }
  return json;
}
