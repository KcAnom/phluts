import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'padding')
PhlutsWidget paddingExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Padding')),
      body: PhlutsSingleChildScrollView(
          child: PhlutsContainer(
              padding: PhlutsEdgeInsets.only(
                  left: 12, right: 12, top: 12, bottom: 12),
              child: PhlutsColumn(
                  mainAxisAlignment: PhlutsMainAxisAlignment.center,
                  crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                  children: [
                    PhlutsSizedBox(height: 24),
                    PhlutsPadding(
                        padding: PhlutsEdgeInsets.only(left: 0, right: 0),
                        child: PhlutsContainer(
                            color: '#672BFF', height: 75, width: 700)),
                    PhlutsSizedBox(height: 24),
                    PhlutsPadding(
                        padding: PhlutsEdgeInsets.only(left: 24, right: 24),
                        child: PhlutsContainer(
                            color: '#FC5632', height: 75, width: 700)),
                    PhlutsSizedBox(height: 24),
                    PhlutsPadding(
                        padding: PhlutsEdgeInsets.only(left: 48, right: 48),
                        child: PhlutsContainer(
                            color: '#D9D9D9', height: 75, width: 700)),
                    PhlutsSizedBox(height: 24),
                    PhlutsPadding(
                        padding: PhlutsEdgeInsets.only(left: 96, right: 96),
                        child: PhlutsContainer(
                            color: '#672BFF', height: 75, width: 700)),
                    PhlutsSizedBox(height: 24),
                    PhlutsPadding(
                        padding: PhlutsEdgeInsets.only(left: 120, right: 120),
                        child: PhlutsContainer(
                            color: '#FC5632', height: 75, width: 700)),
                    PhlutsSizedBox(height: 24),
                    PhlutsPadding(
                        padding: PhlutsEdgeInsets.only(left: 144, right: 144),
                        child: PhlutsContainer(
                            color: '#D9D9D9', height: 75, width: 700))
                  ]))));
}
