import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'scroll_view')
PhlutsWidget scrollViewExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Scrollview')),
      body: PhlutsListView(shrinkWrap: true, children: [
        PhlutsSizedBox(height: 52),
        PhlutsContainer(color: '#672BFF', height: 400, width: 200),
        PhlutsSizedBox(height: 52),
        PhlutsContainer(color: '#FC5632', height: 400, width: 200),
        PhlutsSizedBox(height: 52),
        PhlutsContainer(color: '#D9D9D9', height: 400, width: 200)
      ]));
}
