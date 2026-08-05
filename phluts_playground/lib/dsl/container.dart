import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'container')
PhlutsWidget containerExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Container')),
      body: PhlutsListView(shrinkWrap: true, children: [
        PhlutsSizedBox(height: 52),
        PhlutsCenter(
            child: PhlutsContainer(
                color: 'primary@50', height: 250, width: double.maxFinite)),
        PhlutsSizedBox(height: 52),
        PhlutsCenter(
            child: PhlutsContainer(
                color: '#FC5632',
                height: 100,
                width: 200,
                child: PhlutsAlign(
                    alignment: PhlutsAlignmentDirectional.bottomCenter,
                    child: PhlutsText(
                        data: 'Flutter',
                        style: PhlutsTextStyle(
                            fontSize: 23,
                            fontWeight: PhlutsFontWeight.w600))))),
        PhlutsSizedBox(height: 52),
        PhlutsCenter(
            child: PhlutsContainer(
                color: '#FFFF00',
                height: 250,
                width: 250,
                child: PhlutsAlign(
                    alignment: PhlutsAlignmentDirectional.bottomCenter,
                    child: PhlutsText(
                        data: 'Flutter',
                        style: PhlutsTextStyle(
                            fontSize: 23, fontWeight: PhlutsFontWeight.w600)))))
      ]));
}
