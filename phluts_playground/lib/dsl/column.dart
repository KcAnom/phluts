import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'column')
PhlutsWidget columnExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Column')),
      body: PhlutsSingleChildScrollView(
          child: PhlutsColumn(
              mainAxisAlignment: PhlutsMainAxisAlignment.center,
              crossAxisAlignment: PhlutsCrossAxisAlignment.center,
              spacing: 12,
              children: [
            PhlutsContainer(
                width: 2000,
                height: 200,
                color: '#FFCDD2',
                child: PhlutsCenter(
                    child: PhlutsText(
                        data: 'Red Container',
                        style: PhlutsTextStyle(color: '#B71C1C')))),
            PhlutsContainer(
                width: 2000,
                height: 200,
                color: '#C8E6C9',
                child: PhlutsCenter(
                    child: PhlutsText(
                        data: 'Green Container',
                        style: PhlutsTextStyle(color: '#1B5E20')))),
            PhlutsContainer(
                width: 2000,
                height: 200,
                color: '#BBDEFB',
                child: PhlutsCenter(
                    child: PhlutsText(
                        data: 'Blue Container',
                        style: PhlutsTextStyle(color: '#0D47A1'))))
          ])));
}
