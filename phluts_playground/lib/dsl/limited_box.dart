import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'limited_box')
PhlutsWidget limitedBoxExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'LimitedBox')),
      body: PhlutsListView(shrinkWrap: true, children: [
        PhlutsSizedBox(height: 25),
        PhlutsLimitedBox(
            child: PhlutsContainer(
                height: 100,
                color: '#FF0000',
                child: PhlutsText(
                    data: 'Hello, World! from Limited Box',
                    style: PhlutsTextStyle(fontSize: 16, color: '#000000'))))
      ]));
}
