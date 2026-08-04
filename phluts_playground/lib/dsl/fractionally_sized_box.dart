import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'fractionally_sized_box')
PhlutsWidget fractionallySizedBoxExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Fractionally SizedBox')),
    body: PhlutsContainer(
      height: 400,
      width: 350,
      color: '#A9A9D9',
      child: PhlutsFractionallySizedBox(
        heightFactor: 0.3,
        widthFactor: 0.8,
        alignment: PhlutsAlignment.bottomRight,
        child: PhlutsElevatedButton(
          child: PhlutsText(data: 'FLUTTER'),
          onPressed: PhlutsAction(),
        ),
      ),
    ),
  );
}
