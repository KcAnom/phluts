import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'align')
PhlutsWidget alignExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Align')),
      body: PhlutsAlign(
          alignment: PhlutsAlignmentDirectional.topEnd,
          child: PhlutsContainer(
              color: '#FC5632',
              height: 250,
              width: 200,
              child: PhlutsAlign(
                  alignment: PhlutsAlignmentDirectional.bottomCenter,
                  child: PhlutsText(
                      data: 'Flutter',
                      style: PhlutsTextStyle(
                          fontSize: 23, fontWeight: PhlutsFontWeight.w600))))));
}
