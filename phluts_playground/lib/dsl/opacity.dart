import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'opacity')
PhlutsWidget opacityExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Opacity')),
      body: PhlutsCenter(
          child: PhlutsOpacity(
              opacity: 0.5,
              child: PhlutsText(
                  data: 'Opacity Widget',
                  style: PhlutsTextStyle(
                      fontSize: 23, fontWeight: PhlutsFontWeight.w600)))));
}
