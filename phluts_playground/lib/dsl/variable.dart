import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'variable')
PhlutsWidget variableExample() {
  return PhlutsSetValue(
    values: <Map<String, dynamic>>[
      {'key': 'name', 'value': 'John Doe'},
      {'key': 'age', 'value': 30},
      {'key': 'city', 'value': 'New York'},
      {'key': 'country', 'value': 'USA'},
    ],
    child: PhlutsScaffold(
      body: PhlutsCenter(
        child: PhlutsColumn(
          mainAxisAlignment: PhlutsMainAxisAlignment.center,
          children: [
            PhlutsText(data: '{{name}}'),
            PhlutsText(data: '{{age}}'),
            PhlutsText(
              data: '{{city}}',
              children: [PhlutsTextSpan(text: '{{country}}')],
            ),
          ],
        ),
      ),
      floatingActionButton: PhlutsFloatingActionButton(
        child: PhlutsIcon(icon: 'add'),
        onPressed: PhlutsSetValueAction(
          values: <Map<String, dynamic>>[
            {'key': 'phone', 'value': '1234567890'},
          ],
          action: PhlutsNavigateAction(
            assetPath: 'assets/json/variable_navigate_example.json',
          ),
        ),
      ),
    ),
  );
}
