import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'sliver_safe_area')
PhlutsWidget sliverSafeAreaExample() {
  return PhlutsScaffold(
      body: PhlutsCustomScrollView(slivers: [
    PhlutsSliverSafeArea(
        top: true,
        bottom: true,
        sliver: PhlutsSliverToBoxAdapter(
            child: PhlutsContainer(
                padding: PhlutsEdgeInsets.all(16),
                child: PhlutsText(data: 'Content inside SliverSafeArea'))))
  ]));
}
