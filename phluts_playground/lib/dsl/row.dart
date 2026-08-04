import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'row')
PhlutsWidget rowExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Row')),
      body: PhlutsSingleChildScrollView(
          child: PhlutsRow(
              mainAxisAlignment: PhlutsMainAxisAlignment.center,
              crossAxisAlignment: PhlutsCrossAxisAlignment.center,
              children: [
            PhlutsColumn(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                children: [
                  PhlutsSizedBox(height: 24),
                  PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.center,
                      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                      spacing: 12,
                      children: [
                        PhlutsImage(
                            src:
                                'https://images.pexels.com/photos/2718416/pexels-photo-2718416.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            width: 100),
                        PhlutsImage(
                            src:
                                'https://images.pexels.com/photos/121629/pexels-photo-121629.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            width: 100),
                        PhlutsImage(
                            src:
                                'https://images.pexels.com/photos/1414642/pexels-photo-1414642.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            width: 100)
                      ]),
                  PhlutsSizedBox(height: 32),
                  PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.center,
                      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                      children: [
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
                            onPressed: PhlutsAction()),
                        PhlutsSizedBox(width: 12),
                        PhlutsElevatedButton(
                            child: PhlutsText(data: 'BUTTON'),
                            style: PhlutsButtonStyle(
                                padding: PhlutsEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8)),
                            onPressed: PhlutsAction()),
                        PhlutsSizedBox(width: 12),
                        PhlutsOutlinedButton(
                            child: PhlutsRow(children: [
                              PhlutsText(data: 'BUTTON'),
                              PhlutsSizedBox(width: 4),
                              PhlutsIcon(
                                  iconType: PhlutsIconType.material,
                                  icon: 'remove',
                                  size: 18)
                            ]),
                            style: PhlutsButtonStyle(
                                padding: PhlutsEdgeInsets.only(
                                    top: 8, left: 12, right: 12, bottom: 8)),
                            onPressed: PhlutsAction())
                      ]),
                  PhlutsSizedBox(height: 32),
                  PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.center,
                      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                      children: [
                        PhlutsFloatingActionButton(
                            child: PhlutsIcon(
                                iconType: PhlutsIconType.material,
                                icon: 'add',
                                size: 32),
                            onPressed: PhlutsAction()),
                        PhlutsSizedBox(width: 12),
                        PhlutsFloatingActionButton(
                            buttonType: PhlutsFloatingActionButtonType.large,
                            child: PhlutsIcon(
                                iconType: PhlutsIconType.material,
                                icon: 'add',
                                size: 32),
                            onPressed: PhlutsAction()),
                        PhlutsSizedBox(width: 12),
                        PhlutsFloatingActionButton(
                            buttonType: PhlutsFloatingActionButtonType.extended,
                            icon: PhlutsIcon(
                                iconType: PhlutsIconType.material,
                                icon: 'add',
                                size: 32),
                            child: PhlutsText(data: 'Create'),
                            onPressed: PhlutsAction())
                      ])
                ])
          ])));
}
