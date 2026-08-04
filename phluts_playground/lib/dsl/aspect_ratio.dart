import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'aspect_ratio')
PhlutsWidget aspectRatioExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'AspectRatio')),
      body: PhlutsPadding(
          padding: PhlutsEdgeInsets.only(top: 12, left: 12, right: 12),
          child: PhlutsColumn(
              mainAxisAlignment: PhlutsMainAxisAlignment.start,
              crossAxisAlignment: PhlutsCrossAxisAlignment.start,
              children: [
                PhlutsSizedBox(height: 12),
                PhlutsAspectRatio(
                    aspectRatio: 1.33,
                    child: PhlutsContainer(
                        color: '#FF5733', width: 100, height: 100))
              ])));
}
