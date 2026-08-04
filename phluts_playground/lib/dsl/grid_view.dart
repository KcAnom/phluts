import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'grid_view')
PhlutsWidget gridViewExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Grid View Example')),
      body: PhlutsPadding(
          padding:
              PhlutsEdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
          child: PhlutsGridView(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                        color: '#FFCDD2',
                        borderRadius: PhlutsBorderRadius.all(8)),
                    child: PhlutsCenter(
                        child: PhlutsText(
                            data: 'Item 1',
                            style: PhlutsTextStyle(color: '#B71C1C')))),
                PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                        color: '#C8E6C9',
                        borderRadius: PhlutsBorderRadius.all(8)),
                    child: PhlutsCenter(
                        child: PhlutsText(
                            data: 'Item 2',
                            style: PhlutsTextStyle(color: '#1B5E20')))),
                PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                        color: '#BBDEFB',
                        borderRadius: PhlutsBorderRadius.all(8)),
                    child: PhlutsCenter(
                        child: PhlutsText(
                            data: 'Item 3',
                            style: PhlutsTextStyle(color: '#0D47A1')))),
                PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                        color: '#FFF9C4',
                        borderRadius: PhlutsBorderRadius.all(8)),
                    child: PhlutsCenter(
                        child: PhlutsText(
                            data: 'Item 4',
                            style: PhlutsTextStyle(color: '#F57F17')))),
                PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                        color: '#FFCCBC',
                        borderRadius: PhlutsBorderRadius.all(8)),
                    child: PhlutsCenter(
                        child: PhlutsText(
                            data: 'Item 5',
                            style: PhlutsTextStyle(color: '#BF360C')))),
                PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                        color: '#B2EBF2',
                        borderRadius: PhlutsBorderRadius.all(8)),
                    child: PhlutsCenter(
                        child: PhlutsText(
                            data: 'Item 6',
                            style: PhlutsTextStyle(color: '#006064')))),
                PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                        color: '#F8BBD0',
                        borderRadius: PhlutsBorderRadius.all(8)),
                    child: PhlutsCenter(
                        child: PhlutsText(
                            data: 'Item 7',
                            style: PhlutsTextStyle(color: '#880E4F')))),
                PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                        color: '#D1C4E9',
                        borderRadius: PhlutsBorderRadius.all(8)),
                    child: PhlutsCenter(
                        child: PhlutsText(
                            data: 'Item 8',
                            style: PhlutsTextStyle(color: '#311B92')))),
                PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                        color: '#C5CAE9',
                        borderRadius: PhlutsBorderRadius.all(8)),
                    child: PhlutsCenter(
                        child: PhlutsText(
                            data: 'Item 9',
                            style: PhlutsTextStyle(color: '#1A237E')))),
                PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                        color: '#FFE0B2',
                        borderRadius: PhlutsBorderRadius.all(8)),
                    child: PhlutsCenter(
                        child: PhlutsText(
                            data: 'Item 10',
                            style: PhlutsTextStyle(color: '#E65100'))))
              ])));
}
