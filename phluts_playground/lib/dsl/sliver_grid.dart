import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'sliver_grid')
PhlutsWidget sliverGridExample() {
  return PhlutsScaffold(
      body: PhlutsCustomScrollView(slivers: [
    PhlutsSliverGrid(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1,
        children: [
          PhlutsContainer(
              color: '#4CAF50',
              child: PhlutsCenter(
                  child: PhlutsText(
                      data: 'Grid Item 1',
                      style: PhlutsTextStyle(
                          color: '#FFFFFF',
                          fontWeight: PhlutsFontWeight.bold)))),
          PhlutsContainer(
              color: '#4CAF50',
              child: PhlutsCenter(
                  child: PhlutsText(
                      data: 'Grid Item 2',
                      style: PhlutsTextStyle(
                          color: '#FFFFFF',
                          fontWeight: PhlutsFontWeight.bold)))),
          PhlutsContainer(
              color: '#4CAF50',
              child: PhlutsCenter(
                  child: PhlutsText(
                      data: 'Grid Item 3',
                      style: PhlutsTextStyle(
                          color: '#FFFFFF',
                          fontWeight: PhlutsFontWeight.bold)))),
          PhlutsContainer(
              color: '#4CAF50',
              child: PhlutsCenter(
                  child: PhlutsText(
                      data: 'Grid Item 4',
                      style: PhlutsTextStyle(
                          color: '#FFFFFF',
                          fontWeight: PhlutsFontWeight.bold))))
        ])
  ]));
}
