import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'fitted_box')
PhlutsWidget fittedBoxExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'FittedBox')),
    body: PhlutsPadding(
      padding: PhlutsEdgeInsets.only(top: 12, left: 12, right: 12),
      child: PhlutsColumn(
        mainAxisAlignment: PhlutsMainAxisAlignment.start,
        crossAxisAlignment: PhlutsCrossAxisAlignment.start,
        children: [
          PhlutsSizedBox(height: 12),
          PhlutsFittedBox(
            fit: PhlutsBoxFit.contain,
            alignment: PhlutsAlignment.center,
            child: PhlutsText(
              data: 'Hello, World!',
              style: PhlutsTextStyle(fontSize: 20, color: '#000000'),
            ),
          ),
        ],
      ),
    ),
  );
}
