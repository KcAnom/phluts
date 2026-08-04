import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'text')
PhlutsWidget textExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Text')),
      body: PhlutsPadding(
          padding: PhlutsEdgeInsets.only(top: 12, left: 12, right: 12),
          child: PhlutsColumn(
              mainAxisAlignment: PhlutsMainAxisAlignment.start,
              crossAxisAlignment: PhlutsCrossAxisAlignment.start,
              children: [
                PhlutsSizedBox(height: 12),
                PhlutsText(
                    data: 'Flutter',
                    style: PhlutsTextStyle(
                        fontSize: 23, fontWeight: PhlutsFontWeight.w600)),
                PhlutsSizedBox(height: 32),
                PhlutsText(data: 'This is a normal Text.'),
                PhlutsSizedBox(height: 16),
                PhlutsText(data: 'This is a ', children: [
                  PhlutsTextSpan(
                      text: 'Rich Text.',
                      style: PhlutsTextStyle(
                          fontWeight: PhlutsFontWeight.w800, color: '#6750A4'),
                      onTap: {
                        'actionType': 'navigate',
                        'navigationStyle': 'push',
                        'widgetJson': {
                          'type': 'exampleScreen',
                          'assetPath': 'assets/json/web_view_example.json',
                        },
                      })
                ])
              ])));
}
