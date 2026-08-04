import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'sliver_list')
PhlutsWidget sliverListExample() {
  return PhlutsScaffold(
      body: PhlutsCustomScrollView(slivers: [
    PhlutsSliverList(children: [
      PhlutsContainer(
          height: 80,
          color: 'primary',
          child: PhlutsCenter(child: PhlutsText(data: 'List Item 1'))),
      PhlutsContainer(
          height: 80,
          color: 'secondary',
          child: PhlutsCenter(child: PhlutsText(data: 'List Item 2')))
    ])
  ]));
}
