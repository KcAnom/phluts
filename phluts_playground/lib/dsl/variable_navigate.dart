import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'variable_navigate')
PhlutsWidget variableNavigateExample() {
  return PhlutsScaffold(
      body: PhlutsCenter(
          child: PhlutsColumn(
              mainAxisAlignment: PhlutsMainAxisAlignment.center,
              children: [
        PhlutsText(data: '{{name}}'),
        PhlutsText(data: '{{age}}'),
        PhlutsText(
            data: '{{city}} ', children: [PhlutsTextSpan(text: '{{country}}')]),
        PhlutsText(data: 'phone: {{phone}}')
      ])));
}
