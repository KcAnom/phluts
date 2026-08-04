import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'dynamic_list_view')
PhlutsWidget dynamicListViewExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Users List')),
    body: PhlutsDynamicView(
      request: PhlutsNetworkRequest(
        url: 'https://dummyjson.com/users',
        method: Method.get,
      ),
      targetPath: 'users',
      // NOTE: the JSON template is a listView carrying an `itemTemplate` key —
      // a runtime-only field the dynamicView parser reads to render each list
      // item. PhlutsListView (phluts_core) has no `itemTemplate` param, so the
      // per-item template is represented as the list's single child here.
      template: PhlutsListView(
        children: [
          PhlutsListTile(
            title: PhlutsText(data: '{{firstName}} {{lastName}}'),
            subtitle: PhlutsText(data: '{{email}}'),
            leading: PhlutsCircleAvatar(backgroundImage: '{{image}}'),
          ),
        ],
      ),
    ),
  );
}
