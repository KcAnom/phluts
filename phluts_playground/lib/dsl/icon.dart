import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'icon')
PhlutsWidget iconExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Icon')),
      body: PhlutsRow(
          mainAxisAlignment: PhlutsMainAxisAlignment.center,
          crossAxisAlignment: PhlutsCrossAxisAlignment.center,
          children: [
            PhlutsColumn(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                children: [
                  PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.center,
                      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                      children: [
                        PhlutsIcon(
                            iconType: PhlutsIconType.material,
                            icon: 'add',
                            size: 32),
                        PhlutsSizedBox(width: 20),
                        PhlutsIcon(
                            iconType: PhlutsIconType.material,
                            icon: 'remove',
                            size: 32)
                      ]),
                  PhlutsSizedBox(height: 24),
                  PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.center,
                      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                      children: [
                        PhlutsContainer(
                            child: PhlutsIcon(
                                iconType: PhlutsIconType.cupertino,
                                icon: 'add',
                                size: 32)),
                        PhlutsSizedBox(width: 20),
                        PhlutsContainer(
                            child: PhlutsIcon(
                                iconType: PhlutsIconType.cupertino,
                                icon: 'minus',
                                size: 32))
                      ])
                ])
          ]));
}
