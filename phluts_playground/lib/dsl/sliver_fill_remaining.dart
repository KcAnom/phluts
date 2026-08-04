import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'sliver_fill_remaining')
PhlutsWidget sliverFillRemainingExample() {
  return PhlutsScaffold(
      body: PhlutsCustomScrollView(slivers: [
    PhlutsSliverFillRemaining(
        hasScrollBody: false,
        child:
            PhlutsCenter(child: PhlutsText(data: 'This fills the remaining space')))
  ]));
}
