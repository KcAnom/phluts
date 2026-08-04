import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'circular_progress_indicator')
PhlutsWidget circularProgressIndicatorExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Circular Progress Indicator')),
    body: PhlutsCenter(
      child: PhlutsColumn(
        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
        spacing: 52,
        children: [
          PhlutsSizedBox(height: 1),
          PhlutsCircularProgressIndicator(color: '#672BFF', strokeWidth: 3),
          PhlutsCircularProgressIndicator(
            color: '#541204',
            strokeWidth: 6,
            backgroundColor: '#FFD700',
            strokeCap: PhlutsStrokeCap.round,
          ),
          PhlutsCircularProgressIndicator(
            color: '#bd3ed3',
            strokeWidth: 3,
            value: 0.5,
          ),
        ],
      ),
    ),
  );
}
