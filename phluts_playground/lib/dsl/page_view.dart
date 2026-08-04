import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'page_view')
PhlutsWidget pageViewExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'PageView')),
      body: PhlutsPageView(children: [
        PhlutsContainer(
            color: '#D9D9D9',
            child: PhlutsCenter(
                child: PhlutsText(
                    data: 'Page 1',
                    style: PhlutsTextStyle(
                        fontSize: 23, fontWeight: PhlutsFontWeight.w400)))),
        PhlutsContainer(
            color: '#FC3F1B',
            child: PhlutsCenter(
                child: PhlutsText(
                    data: 'Page 2',
                    style: PhlutsTextStyle(
                        fontSize: 23, fontWeight: PhlutsFontWeight.w400)))),
        PhlutsContainer(
            color: '#D9D9D9',
            child: PhlutsCenter(
                child: PhlutsText(
                    data: 'Page 3',
                    style: PhlutsTextStyle(
                        fontSize: 23, fontWeight: PhlutsFontWeight.w400))))
      ]));
}
