import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'outlined_button')
PhlutsWidget outlinedButtonExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Outlined Button')),
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
                        PhlutsOutlinedButton(
                            child: PhlutsText(data: 'BUTTON'),
                            style: PhlutsButtonStyle(
                                padding: PhlutsEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8)),
                            onPressed: PhlutsAction()),
                        PhlutsSizedBox(width: 20),
                        PhlutsOutlinedButton(
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
                        PhlutsOutlinedButton(
                            child: PhlutsText(data: 'BUTTON'),
                            style: PhlutsButtonStyle(
                                padding: PhlutsEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8))),
                        PhlutsSizedBox(width: 20),
                        PhlutsOutlinedButton(
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
