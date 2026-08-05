import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'app_bar')
PhlutsWidget appBarExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(
          automaticallyImplyLeading: true,
          title: PhlutsText(data: 'Phluts Appbar'),
          primary: true,
          excludeHeaderSemantics: false,
          toolbarOpacity: 1,
          bottomOpacity: 1,
          forceMaterialTransparency: false,
          useDefaultSemanticsOrder: true),
      body: PhlutsCenter(
          child:
              PhlutsText(data: 'Home', style: PhlutsTextStyle(fontSize: 17))));
}
