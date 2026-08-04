// The JSON for this example uses the deprecated `defaultBottomNavigationController`
// and `bottomNavigationView` types, so the DSL mirrors them to stay faithful.
// The navigation_bar example demonstrates the replacements.
// ignore_for_file: deprecated_member_use

import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'bottom_nav_bar')
PhlutsWidget bottomNavBarExample() {
  return PhlutsDefaultBottomNavigationController(
    length: 3,
    child: PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Bottom Navigation Screen')),
      body: PhlutsBottomNavigationView(
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
      bottomNavigationBar: PhlutsBottomNavigationBar(
        items: [
          PhlutsBottomNavigationBarItem(
            label: 'Home',
            icon: PhlutsIcon(iconType: PhlutsIconType.material, icon: 'home'),
          ),
          PhlutsBottomNavigationBarItem(
            label: 'Search',
            icon: PhlutsIcon(iconType: PhlutsIconType.material, icon: 'search'),
          ),
          PhlutsBottomNavigationBarItem(
            label: 'Profile',
            icon: PhlutsIcon(
              iconType: PhlutsIconType.material,
              icon: 'account_circle',
            ),
          ),
        ],
      ),
    ),
  );
}
