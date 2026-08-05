import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'sliver_app_bar')
PhlutsWidget sliverAppBarExample() {
  return PhlutsScaffold(
      body: PhlutsCustomScrollView(slivers: [
    PhlutsSliverAppBar(
        title: PhlutsText(data: 'SliverAppBar'),
        leading: PhlutsIconButton(
            icon: PhlutsIcon(iconType: PhlutsIconType.material, icon: 'menu'),
            onPressed: PhlutsAction()),
        backgroundColor: 'primary',
        actions: [
          PhlutsIconButton(
              icon: PhlutsIcon(
                  iconType: PhlutsIconType.cupertino, icon: 'heart_solid'),
              onPressed: PhlutsAction()),
          PhlutsIconButton(
              icon:
                  PhlutsIcon(iconType: PhlutsIconType.material, icon: 'search'),
              onPressed: PhlutsAction()),
          PhlutsIconButton(
              icon: PhlutsIcon(
                  iconType: PhlutsIconType.material, icon: 'more_horiz'),
              onPressed: PhlutsAction())
        ])
  ]));
}
