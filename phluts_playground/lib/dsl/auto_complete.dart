import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'auto_complete')
PhlutsWidget autoCompleteExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Autocomplete Basic')),
      body: PhlutsCenter(
          child: PhlutsColumn(children: [
        PhlutsText(
            data:
                'Type below to autocomplete the following possible results: [aardvark, bobcat, chameleon].'),
        PhlutsAutoComplete(
            options: ['aardvark', 'bobcat', 'chameleon'],
            onSelected: PhlutsAction())
      ])));
}
