import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'tab_bar')
PhlutsWidget tabBarExample() {
  return PhlutsDefaultTabController(
      length: 3,
      child: PhlutsScaffold(
          appBar: PhlutsAppBar(
              title: PhlutsText(data: 'Tabbar'),
              bottom: PhlutsTabBar(tabs: [
                PhlutsTab(text: 'Red'),
                PhlutsTab(text: 'Red'),
                PhlutsTab(text: 'Red')
              ])),
          body: PhlutsTabBarView(children: [
            PhlutsContainer(color: '#D9D9D9'),
            PhlutsContainer(color: '#FC3F1B'),
            PhlutsContainer(color: '#D9D9D9')
          ])));
}
