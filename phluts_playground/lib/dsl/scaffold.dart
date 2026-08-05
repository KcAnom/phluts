import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'scaffold')
PhlutsWidget scaffoldExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(
          title: PhlutsText(data: 'Scaffold'),
          leading: PhlutsIconButton(
              icon: PhlutsIcon(iconType: PhlutsIconType.material, icon: 'menu'),
              onPressed: PhlutsAction()),
          actions: [
            PhlutsIconButton(
                icon: PhlutsIcon(
                    iconType: PhlutsIconType.cupertino, icon: 'heart_solid'),
                onPressed: PhlutsAction()),
            PhlutsIconButton(
                icon: PhlutsIcon(
                    iconType: PhlutsIconType.material, icon: 'search'),
                onPressed: PhlutsAction()),
            PhlutsIconButton(
                icon: PhlutsIcon(
                    iconType: PhlutsIconType.material, icon: 'more_horiz'),
                onPressed: PhlutsAction())
          ]),
      body: PhlutsRow(
          mainAxisAlignment: PhlutsMainAxisAlignment.center,
          crossAxisAlignment: PhlutsCrossAxisAlignment.center,
          children: [
            PhlutsColumn(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                children: [
                  PhlutsText(data: 'Home', style: PhlutsTextStyle(fontSize: 17))
                ])
          ]),
      floatingActionButton: PhlutsFloatingActionButton(
          backgroundColor: '#FC3F1B',
          foregroundColor: '#ffffff',
          buttonType: PhlutsFloatingActionButtonType.medium,
          child: PhlutsIcon(
              iconType: PhlutsIconType.material, icon: 'add', size: 32),
          onPressed: PhlutsAction()));
}
