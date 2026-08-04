import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'hero')
PhlutsWidget heroExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Hero Example')),
    body: PhlutsCenter(
      child: PhlutsColumn(
        mainAxisAlignment: PhlutsMainAxisAlignment.center,
        children: [
          PhlutsHero(
            tag: 'hero-icon',
            createRectTween: PhlutsRectTween(
              type: 'materialRectArcTween',
              begin: PhlutsRect(
                rectType: PhlutsRectType.fromCenter,
                center: PhlutsOffset(dx: 120.0, dy: 140.0),
                width: 100.0,
                height: 100.0,
              ),
              end: PhlutsRect(
                rectType: PhlutsRectType.fromCenter,
                center: PhlutsOffset(dx: 200.0, dy: 200.0),
                width: 50.0,
                height: 50.0,
              ),
            ),
            child: PhlutsIcon(
              iconType: PhlutsIconType.material,
              icon: 'flight_takeoff',
              size: 150.0,
            ),
          ),
          PhlutsSizedBox(height: 24.0),
          PhlutsTextButton(
            child: PhlutsText(data: 'Tap to see Hero Animation'),
            onPressed: PhlutsNavigateAction(
              navigationStyle: NavigationStyle.push,
              widgetJson: {
                'type': 'scaffold',
                'appBar': {
                  'type': 'appBar',
                  'title': {'type': 'text', 'data': 'Flight Details'},
                },
                'body': {
                  'type': 'center',
                  'child': {
                    'type': 'column',
                    'mainAxisAlignment': 'center',
                    'children': [
                      {
                        'type': 'hero',
                        'tag': 'hero-icon',
                        'createRectTween': {
                          'type': 'materialRectArcTween',
                          'begin': {
                            'rectType': 'fromCenter',
                            'center': {'dx': 120.0, 'dy': 140.0},
                            'width': 100.0,
                            'height': 100.0,
                          },
                          'end': {
                            'rectType': 'fromCenter',
                            'center': {'dx': 200.0, 'dy': 200.0},
                            'width': 50.0,
                            'height': 50.0,
                          },
                        },
                        'child': {
                          'type': 'icon',
                          'iconType': 'material',
                          'icon': 'flight_takeoff',
                          'size': 50.0,
                        },
                      },
                      {'type': 'sizedBox', 'height': 16.0},
                      {
                        'type': 'text',
                        'data': 'Flight AB123',
                        'style': {'fontSize': 24.0, 'fontWeight': 'w500'},
                      },
                    ],
                  },
                },
              },
            ),
          ),
        ],
      ),
    ),
  );
}
