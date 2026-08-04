import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'elevated_button')
PhlutsWidget elevatedButtonExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Elevated Button')),
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
                        PhlutsElevatedButton(
                            child: PhlutsText(data: 'BUTTON'),
                            style: PhlutsButtonStyle(
                                padding: PhlutsEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8)),
                            onPressed: PhlutsAction()),
                        PhlutsSizedBox(width: 20),
                        PhlutsElevatedButton(
                            child: PhlutsRow(children: [
                              PhlutsIcon(
                                  iconType: PhlutsIconType.material,
                                  icon: 'add',
                                  size: 18),
                              PhlutsSizedBox(width: 4),
                              PhlutsText(data: 'BUTTON')
                            ]),
                            style: PhlutsButtonStyle(
                                padding: PhlutsEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8)),
                            onPressed: PhlutsAction())
                      ]),
                  PhlutsSizedBox(height: 12),
                  PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.center,
                      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                      children: [
                        PhlutsElevatedButton(
                            child: PhlutsText(data: 'BUTTON'),
                            style: PhlutsButtonStyle(
                                padding: PhlutsEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8))),
                        PhlutsSizedBox(width: 20),
                        PhlutsElevatedButton(
                            child: PhlutsRow(children: [
                              PhlutsIcon(
                                  iconType: PhlutsIconType.material,
                                  icon: 'add',
                                  size: 18),
                              PhlutsSizedBox(width: 4),
                              PhlutsText(data: 'BUTTON')
                            ]),
                            style: PhlutsButtonStyle(
                                padding: PhlutsEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8)))
                      ]),
                  PhlutsSizedBox(height: 12),
                  PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.center,
                      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                      children: [
                        PhlutsElevatedButton(
                            child: PhlutsText(data: 'BUTTON'),
                            style: PhlutsButtonStyle(
                                padding: PhlutsEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8),
                                shape: PhlutsRoundedRectangleBorder(
                                    borderRadius: PhlutsBorderRadius.only(
                                        topLeft: 8,
                                        topRight: 8,
                                        bottomLeft: 8,
                                        bottomRight: 8))),
                            onPressed: PhlutsAction()),
                        PhlutsSizedBox(width: 20),
                        PhlutsElevatedButton(
                            child: PhlutsRow(children: [
                              PhlutsIcon(
                                  iconType: PhlutsIconType.material,
                                  icon: 'add',
                                  size: 18),
                              PhlutsSizedBox(width: 4),
                              PhlutsText(data: 'BUTTON')
                            ]),
                            style: PhlutsButtonStyle(
                                padding: PhlutsEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8),
                                shape: PhlutsRoundedRectangleBorder(
                                    borderRadius: PhlutsBorderRadius.only(
                                        topLeft: 8,
                                        topRight: 8,
                                        bottomLeft: 8,
                                        bottomRight: 8))),
                            onPressed: PhlutsAction())
                      ])
                ])
          ]));
}
