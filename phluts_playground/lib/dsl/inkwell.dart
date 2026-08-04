import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'inkwell')
PhlutsWidget inkwellExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'InkWell')),
    body: PhlutsListView(
      shrinkWrap: true,
      children: [
        PhlutsCenter(
          child: PhlutsInkWell(
            child: PhlutsPadding(
              padding:
                  PhlutsEdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
              child: PhlutsText(
                data: 'Hello, World! from Inkwell',
                textAlign: PhlutsTextAlign.center,
              ),
            ),
            splashColor: '#E1BEE7',
            borderRadius: PhlutsBorderRadius.only(
              topLeft: 20,
              topRight: 20,
              bottomLeft: 20,
              bottomRight: 20,
            ),
            radius: 20,
            hoverDuration: PhlutsDuration(seconds: 10),
            onTap: PhlutsDialogAction(
              widget: {
                'type': 'alertDialog',
                'title': {'type': 'text', 'data': 'On Tap Successful'},
              },
            ),
          ),
        ),
      ],
    ),
  );
}
