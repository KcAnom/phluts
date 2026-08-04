import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'radio')
PhlutsWidget radioExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Phluts Radio')),
    body: PhlutsForm(
      child: PhlutsRadioGroup(
        child: PhlutsColumn(
          children: [
            PhlutsListTile(
              leading: PhlutsRadio(
                radioType: PhlutsRadioType.adaptive,
                value: '1',
              ),
              title: PhlutsText(
                data: 'Male',
                style: PhlutsTextStyle(fontSize: 21),
              ),
            ),
            PhlutsListTile(
              leading: PhlutsRadio(
                radioType: PhlutsRadioType.adaptive,
                value: '2',
              ),
              title: PhlutsText(
                data: 'Female',
                style: PhlutsTextStyle(fontSize: 21),
              ),
            ),
            PhlutsListTile(
              leading: PhlutsRadio(
                radioType: PhlutsRadioType.adaptive,
                value: '3',
              ),
              title: PhlutsText(
                data: 'Other',
                style: PhlutsTextStyle(fontSize: 21),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
