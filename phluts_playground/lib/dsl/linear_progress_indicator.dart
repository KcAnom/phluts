import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'linear_progress_indicator')
PhlutsWidget linearProgressIndicatorExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Linear Progress Indicator')),
      body: PhlutsPadding(
          padding: PhlutsEdgeInsets.only(left: 10, right: 10),
          child: PhlutsColumn(
              crossAxisAlignment: PhlutsCrossAxisAlignment.center,
              spacing: 52,
              children: [
                PhlutsSizedBox(height: 1),
                PhlutsLinearProgressIndicator(color: '#672BFF', minHeight: 3),
                PhlutsLinearProgressIndicator(
                    color: '#541204',
                    minHeight: 6,
                    backgroundColor: '#FFD700',
                    borderRadius: PhlutsBorderRadius.only(
                        topLeft: 10,
                        topRight: 10,
                        bottomLeft: 10,
                        bottomRight: 10)),
                PhlutsLinearProgressIndicator(
                    color: '#bd3ed3', minHeight: 3, value: 0.5)
              ])));
}
