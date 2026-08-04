import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'stack')
PhlutsWidget stackExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Stack')),
      body: PhlutsStack(
          alignment: PhlutsAlignment.center,
          clipBehavior: PhlutsClip.antiAlias,
          children: [
            PhlutsPositioned(
                top: 30,
                left: 30,
                height: 150,
                width: 150,
                child: PhlutsContainer(
                    width: 75,
                    height: 75,
                    color: '#81C784',
                    child: PhlutsText(
                        data: 'Green',
                        style: PhlutsTextStyle(fontSize: 20, color: '#FFFFFF')))),
            PhlutsPositioned(
                top: 70,
                left: 60,
                height: 150,
                width: 150,
                child: PhlutsContainer(
                    width: 75,
                    height: 75,
                    color: '#EF5350',
                    child: PhlutsText(
                        data: 'Red',
                        style: PhlutsTextStyle(fontSize: 20, color: '#FFFFFF')))),
            PhlutsPositioned(
                top: 130,
                left: 90,
                height: 150,
                width: 150,
                child: PhlutsContainer(
                    width: 75,
                    height: 75,
                    color: '#BA68C8',
                    child: PhlutsText(
                        data: 'Purple',
                        style: PhlutsTextStyle(fontSize: 20, color: '#FFFFFF'))))
          ]));
}
