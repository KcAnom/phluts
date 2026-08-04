import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'divider')
PhlutsWidget dividerExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Divider')),
      body: PhlutsListView(children: [
        PhlutsDivider(thickness: 5, height: 5, color: '#672BFF'),
        PhlutsSizedBox(height: 20),
        PhlutsDivider(thickness: 3, height: 3, color: '#FC5632'),
        PhlutsSizedBox(height: 20),
        PhlutsDivider(thickness: 2, height: 2, color: '#32FC88'),
        PhlutsSizedBox(height: 20),
        PhlutsSizedBox(
            height: 200,
            child: PhlutsVerticalDivider(
                width: 20,
                thickness: 4,
                indent: 10,
                endIndent: 10,
                color: '#21814C'))
      ]));
}
