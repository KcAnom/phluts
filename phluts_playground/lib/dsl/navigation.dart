import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'navigation')
PhlutsWidget navigationExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Navigation')),
    body: PhlutsRow(
      mainAxisAlignment: PhlutsMainAxisAlignment.center,
      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
      children: [
        PhlutsColumn(
          mainAxisAlignment: PhlutsMainAxisAlignment.center,
          crossAxisAlignment: PhlutsCrossAxisAlignment.center,
          children: [
            PhlutsElevatedButton(
              style: _buttonStyle(),
              onPressed: PhlutsNavigateAction(
                navigationStyle: NavigationStyle.push,
                widgetJson: {
                  'type': 'exampleScreen',
                  'assetPath': 'assets/json/navigation_example.json',
                },
              ),
              child: PhlutsText(data: 'Push'),
            ),
            PhlutsSizedBox(height: 8),
            PhlutsElevatedButton(
              style: _buttonStyle(),
              onPressed: PhlutsNavigateAction(
                navigationStyle: NavigationStyle.pop,
              ),
              child: PhlutsText(data: 'Pop'),
            ),
            PhlutsSizedBox(height: 8),
            PhlutsElevatedButton(
              style: _buttonStyle(),
              onPressed: PhlutsNavigateAction(
                navigationStyle: NavigationStyle.pushReplacement,
                widgetJson: {
                  'type': 'exampleScreen',
                  'assetPath': 'assets/json/navigation_example.json',
                },
              ),
              child: PhlutsText(data: 'Push and Replace'),
            ),
            PhlutsSizedBox(height: 8),
            PhlutsElevatedButton(
              style: _buttonStyle(),
              onPressed: PhlutsNavigateAction(
                navigationStyle: NavigationStyle.pushAndRemoveAll,
                widgetJson: {
                  'type': 'exampleScreen',
                  'assetPath': 'assets/json/navigation_example.json',
                },
              ),
              child: PhlutsText(data: 'Push and Remove All'),
            ),
            PhlutsSizedBox(height: 8),
            PhlutsElevatedButton(
              style: _buttonStyle(),
              onPressed: PhlutsNavigateAction(
                navigationStyle: NavigationStyle.popAll,
              ),
              child: PhlutsText(data: 'Pop All'),
            ),
            PhlutsSizedBox(height: 8),
            PhlutsElevatedButton(
              style: _buttonStyle(),
              onPressed: PhlutsNavigateAction(
                navigationStyle: NavigationStyle.pushReplacementNamed,
                routeName: '/detailsScreen',
              ),
              child: PhlutsText(data: 'Push Named and Replace'),
            ),
            PhlutsSizedBox(height: 8),
            PhlutsElevatedButton(
              style: _buttonStyle(),
              onPressed: PhlutsNavigateAction(
                navigationStyle: NavigationStyle.pushNamed,
                routeName: '/detailsScreen',
              ),
              child: PhlutsText(data: 'Push Named'),
            ),
            PhlutsSizedBox(height: 8),
            PhlutsElevatedButton(
              style: _buttonStyle(),
              onPressed: PhlutsNavigateAction(
                navigationStyle: NavigationStyle.pushNamedAndRemoveAll,
                routeName: '/homeScreen',
              ),
              child: PhlutsText(data: 'Push Named and Remove Until'),
            ),
          ],
        ),
      ],
    ),
  );
}

PhlutsButtonStyle _buttonStyle() {
  return PhlutsButtonStyle(
    padding: PhlutsEdgeInsets.only(top: 8, left: 12, right: 12, bottom: 8),
  );
}
