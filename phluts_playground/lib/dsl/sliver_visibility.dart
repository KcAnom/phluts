import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'sliver_visibility')
PhlutsWidget sliverVisibilityExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Sliver Visibility')),
      body: PhlutsCustomScrollView(slivers: [
        PhlutsSliverVisibility(
            visible: true,
            sliver: PhlutsSliverToBoxAdapter(
                child: PhlutsContainer(
                    height: 200,
                    color: 'secondary',
                    child: PhlutsCenter(
                        child: PhlutsText(
                            data: 'This sliver is conditionally visible')))))
      ]));
}
