import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'placeholder')
PhlutsWidget placeholderExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Placeholder')),
      body: PhlutsListView(shrinkWrap: true, children: [
        PhlutsSizedBox(height: 25),
        PhlutsPlaceholder(
            color: '#455A64',
            strokeWidth: 2,
            fallbackHeight: 400,
            fallbackWidth: 400),
        PhlutsSizedBox(height: 25),
        PhlutsPlaceholder(color: '#672BFF', strokeWidth: 5, fallbackHeight: 100)
      ]));
}
