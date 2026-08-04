import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'sliver_padding')
PhlutsWidget sliverPaddingExample() {
  return PhlutsScaffold(
    body: PhlutsCustomScrollView(
      slivers: [
        PhlutsSliverPadding(
          padding: PhlutsEdgeInsets.all(16.0),
          sliver: PhlutsSliverToBoxAdapter(
            child: PhlutsContainer(
              height: 150,
              color: '#4CAF50',
              child: PhlutsCenter(
                child: PhlutsText(
                  data: 'I am a Box inside a SliverPadding!',
                  style: PhlutsTextStyle(
                    color: '#FFFFFF',
                    fontWeight: PhlutsFontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
