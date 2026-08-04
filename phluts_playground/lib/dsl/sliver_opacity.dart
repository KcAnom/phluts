import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'sliver_opacity')
PhlutsWidget sliverOpacityExample() {
  return PhlutsScaffold(
      body: PhlutsCustomScrollView(slivers: [
    PhlutsSliverOpacity(
        opacity: 0.4,
        sliver: PhlutsSliverToBoxAdapter(
            child: PhlutsContainer(
                height: 200,
                color: 'secondary',
                child: PhlutsCenter(
                    child: PhlutsText(
                        data: 'This sliver is faded using SliverOpacity')))))
  ]));
}
