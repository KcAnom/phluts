import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'sized_box')
PhlutsWidget sizedBoxExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Sizedbox')),
      body: PhlutsListView(shrinkWrap: true, children: [
        PhlutsSizedBox(height: 25),
        PhlutsContainer(color: '#672BFF', height: 75),
        PhlutsSizedBox(height: 50),
        PhlutsContainer(color: '#FC5632', height: 75),
        PhlutsSizedBox(height: 75),
        PhlutsContainer(color: '#D9D9D9', height: 75),
        PhlutsSizedBox(height: 100),
        PhlutsContainer(color: '#672BFF', height: 75),
        PhlutsSizedBox(height: 125),
        PhlutsContainer(color: '#FC5632', height: 75),
        PhlutsSizedBox(height: 150),
        PhlutsContainer(color: '#D9D9D9', height: 75)
      ]));
}
