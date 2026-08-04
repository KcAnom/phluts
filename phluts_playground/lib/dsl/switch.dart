import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'switch')
PhlutsWidget switchExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Phluts Switch')),
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
                PhlutsSwitch(switchType: PhlutsSwitchType.cupertino, value: true),
                PhlutsSizedBox(width: 20),
                PhlutsSwitch(switchType: PhlutsSwitchType.adaptive, value: true),
                PhlutsSizedBox(width: 20),
                PhlutsSwitch(switchType: PhlutsSwitchType.material, value: false),
              ],
            ),
            PhlutsSizedBox(height: 12),
          ],
        ),
      ],
    ),
  );
}
