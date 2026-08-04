import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'navigation_bar')
PhlutsWidget navigationBarExample() {
  return PhlutsDefaultNavigationController(
    length: 3,
    child: PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Navigation Bar Screen')),
      body: PhlutsNavigationView(
        children: [
          PhlutsCenter(
            child: PhlutsText(data: 'Home', style: PhlutsTextStyle(fontSize: 24)),
          ),
          PhlutsCenter(
            child: PhlutsText(data: 'Search', style: PhlutsTextStyle(fontSize: 24)),
          ),
          PhlutsCenter(
            child:
                PhlutsText(data: 'Profile', style: PhlutsTextStyle(fontSize: 24)),
          ),
        ],
      ),
      bottomNavigationBar: PhlutsNavigationBar(
        labelBehavior: PhlutsNavigationDestinationLabelBehavior.alwaysShow,
        destinations: [
          PhlutsNavigationDestination(
            label: 'Home',
            icon: PhlutsIcon(
              iconType: PhlutsIconType.material,
              icon: 'home_outlined',
            ),
            selectedIcon: PhlutsIcon(
              iconType: PhlutsIconType.material,
              icon: 'home',
            ),
          ),
          PhlutsNavigationDestination(
            label: 'Search',
            icon: PhlutsIcon(iconType: PhlutsIconType.material, icon: 'search'),
          ),
          PhlutsNavigationDestination(
            label: 'Profile',
            icon: PhlutsIcon(
              iconType: PhlutsIconType.material,
              icon: 'account_circle_outlined',
            ),
            selectedIcon: PhlutsIcon(
              iconType: PhlutsIconType.material,
              icon: 'account_circle',
            ),
          ),
        ],
      ),
    ),
  );
}
