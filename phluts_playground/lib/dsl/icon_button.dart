import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'icon_button')
PhlutsWidget iconButtonExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Icon Button')),
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
                        PhlutsIconButton(
                            icon: PhlutsIcon(
                                iconType: PhlutsIconType.material, icon: 'add'),
                            onPressed: PhlutsAction()),
                        PhlutsSizedBox(width: 20),
                        PhlutsIconButton(
                            icon: PhlutsIcon(
                                iconType: PhlutsIconType.material,
                                icon: 'remove'),
                            onPressed: PhlutsAction())
                      ]),
                  PhlutsSizedBox(height: 52),
                  PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.center,
                      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                      children: [
                        PhlutsIconButton(
                            icon: PhlutsIcon(
                                iconType: PhlutsIconType.material, icon: 'add')),
                        PhlutsSizedBox(width: 20),
                        PhlutsIconButton(
                            icon: PhlutsIcon(
                                iconType: PhlutsIconType.material,
                                icon: 'remove'))
                      ])
                ])
          ]));
}
