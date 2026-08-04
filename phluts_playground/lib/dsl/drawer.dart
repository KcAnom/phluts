import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'drawer')
PhlutsWidget drawerExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(
      title: PhlutsText(
        data: 'Drawer Example',
        style: PhlutsTextStyle(color: '#ffffff', fontSize: 21),
      ),
      backgroundColor: '#4D00E9',
    ),
    drawerEnableOpenDragGesture: true,
    drawerEdgeDragWidth: 20.0,
    drawer: PhlutsDrawer(
      backgroundColor: '#f5f5f5',
      elevation: 16.0,
      width: 280.0,
      child: PhlutsColumn(
        children: [
          PhlutsContainer(
            height: 120,
            color: '#4D00E9',
            child: PhlutsCenter(
              child: PhlutsText(
                data: 'Drawer Header',
                style: PhlutsTextStyle(
                  color: '#ffffff',
                  fontSize: 20,
                  fontWeight: PhlutsFontWeight.bold,
                ),
              ),
            ),
          ),
          PhlutsExpanded(
            child: PhlutsListView(
              children: [
                PhlutsListTile(
                  leading: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'home',
                    size: 24,
                  ),
                  title: PhlutsText(data: 'Home'),
                  onTap: PhlutsAction(
                    jsonData: {
                      'actionType': 'snackBar',
                      'content': 'Home tapped!'
                    },
                  ),
                ),
                PhlutsListTile(
                  leading: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'settings',
                    size: 24,
                  ),
                  title: PhlutsText(data: 'Settings'),
                  onTap: PhlutsAction(
                    jsonData: {
                      'actionType': 'snackBar',
                      'content': 'Settings tapped!'
                    },
                  ),
                ),
                PhlutsListTile(
                  leading: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'info',
                    size: 24,
                  ),
                  title: PhlutsText(data: 'About'),
                  onTap: PhlutsAction(
                    jsonData: {
                      'actionType': 'snackBar',
                      'content': 'About tapped!'
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    body: PhlutsCenter(
      child: PhlutsColumn(
        mainAxisAlignment: PhlutsMainAxisAlignment.center,
        children: [
          PhlutsText(
            data: 'Welcome to Drawer Example',
            style: PhlutsTextStyle(fontSize: 24, fontWeight: PhlutsFontWeight.bold),
          ),
          PhlutsSizedBox(height: 16),
          PhlutsText(
            data:
                'Swipe from left edge or tap the menu icon to open the drawer',
            style: PhlutsTextStyle(fontSize: 16, color: '#666666'),
          ),
        ],
      ),
    ),
  );
}
