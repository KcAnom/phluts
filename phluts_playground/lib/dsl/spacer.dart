import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'spacer')
PhlutsWidget spacerExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Spacer')),
      body: PhlutsPadding(
          padding:
              PhlutsEdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: PhlutsColumn(children: [
            PhlutsTextField(
                keyboardType: PhlutsTextInputType.text,
                maxLines: 1,
                decoration: PhlutsInputDecoration(hintText: 'Enter your pin')),
            PhlutsSpacer(),
            PhlutsRow(children: [
              PhlutsRow(children: [
                PhlutsText(
                    data: 'Forgot Pin', style: PhlutsTextStyle(fontSize: 17)),
                PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'keyboard_arrow_right',
                    size: 24)
              ]),
              PhlutsSpacer(),
              PhlutsText(data: 'Need help?', style: PhlutsTextStyle(fontSize: 17))
            ]),
            PhlutsSpacer(flex: 2),
            PhlutsElevatedButton(
                child: PhlutsText(data: 'Submit'),
                style: PhlutsButtonStyle(
                    backgroundColor: 'primary', foregroundColor: '#ffffff'),
                onPressed: PhlutsAction())
          ])));
}
