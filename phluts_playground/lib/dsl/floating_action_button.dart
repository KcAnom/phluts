import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'floating_action_button')
PhlutsWidget floatingActionButtonExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Floating Action Button')),
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
                PhlutsFloatingActionButton(
                  buttonType: PhlutsFloatingActionButtonType.extended,
                  icon: PhlutsIcon(
                      iconType: PhlutsIconType.material, icon: 'add'),
                  child: PhlutsText(data: 'Create'),
                  onPressed: PhlutsAction(),
                ),
                PhlutsSizedBox(width: 20),
                PhlutsFloatingActionButton(
                  buttonType: PhlutsFloatingActionButtonType.large,
                  child: PhlutsIcon(
                      iconType: PhlutsIconType.material, icon: 'add'),
                  onPressed: PhlutsAction(),
                ),
              ],
            ),
            PhlutsSizedBox(height: 52),
            PhlutsRow(
              mainAxisAlignment: PhlutsMainAxisAlignment.center,
              crossAxisAlignment: PhlutsCrossAxisAlignment.center,
              children: [
                PhlutsFloatingActionButton(
                  buttonType: PhlutsFloatingActionButtonType.extended,
                  disabledElevation: 0,
                  icon: PhlutsIcon(
                      iconType: PhlutsIconType.material, icon: 'add'),
                  child: PhlutsText(data: 'Create'),
                ),
                PhlutsSizedBox(width: 20),
                PhlutsFloatingActionButton(
                  buttonType: PhlutsFloatingActionButtonType.large,
                  disabledElevation: 0,
                  child: PhlutsIcon(
                      iconType: PhlutsIconType.material, icon: 'add'),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
