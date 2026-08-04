import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'center')
PhlutsWidget centerExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Center')),
      body: PhlutsCenter(
          child: PhlutsContainer(
              alignment: PhlutsAlignment.center,
              height: 200,
              width: 150,
              color: '#FC5632',
              child: PhlutsText(
                  data: 'Flutter', style: PhlutsTextStyle(fontSize: 23)))));
}
