import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'text_button')
PhlutsWidget textButtonExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Text Button')),
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
                        PhlutsTextButton(
                            child: PhlutsText(data: 'BUTTON'),
                            style: PhlutsButtonStyle(
                                padding: PhlutsEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8)),
                            onPressed: PhlutsAction()),
                        PhlutsSizedBox(width: 20),
                        PhlutsTextButton(
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
                        PhlutsTextButton(
                            child: PhlutsText(data: 'BUTTON'),
                            style: PhlutsButtonStyle(
                                padding: PhlutsEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8))),
                        PhlutsSizedBox(width: 20),
                        PhlutsTextButton(
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
                      ])
                ])
          ]));
}
