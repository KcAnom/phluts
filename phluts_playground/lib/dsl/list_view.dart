import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'list_view')
PhlutsWidget listViewExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Listview')),
      body: PhlutsListView(
          shrinkWrap: true,
          separator: PhlutsContainer(height: 10),
          children: [
            PhlutsListTile(
                leading: PhlutsContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: PhlutsColumn(
                        mainAxisAlignment: PhlutsMainAxisAlignment.center,
                        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                        children: [
                          PhlutsText(
                              data: '1', style: PhlutsTextStyle(fontSize: 21))
                        ])),
                title: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item 1', style: PhlutsTextStyle(fontSize: 18))),
                subtitle: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item description',
                        style: PhlutsTextStyle(fontSize: 14))),
                trailing: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            PhlutsListTile(
                leading: PhlutsContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: PhlutsColumn(
                        mainAxisAlignment: PhlutsMainAxisAlignment.center,
                        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                        children: [
                          PhlutsText(
                              data: '2', style: PhlutsTextStyle(fontSize: 21))
                        ])),
                title: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item 2', style: PhlutsTextStyle(fontSize: 18))),
                subtitle: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item description',
                        style: PhlutsTextStyle(fontSize: 14))),
                trailing: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            PhlutsListTile(
                leading: PhlutsContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: PhlutsColumn(
                        mainAxisAlignment: PhlutsMainAxisAlignment.center,
                        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                        children: [
                          PhlutsText(
                              data: '3', style: PhlutsTextStyle(fontSize: 21))
                        ])),
                title: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item 3', style: PhlutsTextStyle(fontSize: 18))),
                subtitle: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item description',
                        style: PhlutsTextStyle(fontSize: 14))),
                trailing: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            PhlutsListTile(
                leading: PhlutsContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: PhlutsColumn(
                        mainAxisAlignment: PhlutsMainAxisAlignment.center,
                        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                        children: [
                          PhlutsText(
                              data: '4', style: PhlutsTextStyle(fontSize: 21))
                        ])),
                title: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item 4', style: PhlutsTextStyle(fontSize: 18))),
                subtitle: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item description',
                        style: PhlutsTextStyle(fontSize: 14))),
                trailing: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            PhlutsListTile(
                leading: PhlutsContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: PhlutsColumn(
                        mainAxisAlignment: PhlutsMainAxisAlignment.center,
                        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                        children: [
                          PhlutsText(
                              data: '5', style: PhlutsTextStyle(fontSize: 21))
                        ])),
                title: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item 5', style: PhlutsTextStyle(fontSize: 18))),
                subtitle: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item description',
                        style: PhlutsTextStyle(fontSize: 14))),
                trailing: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            PhlutsListTile(
                leading: PhlutsContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: PhlutsColumn(
                        mainAxisAlignment: PhlutsMainAxisAlignment.center,
                        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                        children: [
                          PhlutsText(
                              data: '6', style: PhlutsTextStyle(fontSize: 21))
                        ])),
                title: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item 6', style: PhlutsTextStyle(fontSize: 18))),
                subtitle: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item description',
                        style: PhlutsTextStyle(fontSize: 14))),
                trailing: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            PhlutsListTile(
                leading: PhlutsContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: PhlutsColumn(
                        mainAxisAlignment: PhlutsMainAxisAlignment.center,
                        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                        children: [
                          PhlutsText(
                              data: '7', style: PhlutsTextStyle(fontSize: 21))
                        ])),
                title: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item 7', style: PhlutsTextStyle(fontSize: 18))),
                subtitle: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item description',
                        style: PhlutsTextStyle(fontSize: 14))),
                trailing: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            PhlutsListTile(
                leading: PhlutsContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: PhlutsColumn(
                        mainAxisAlignment: PhlutsMainAxisAlignment.center,
                        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                        children: [
                          PhlutsText(
                              data: '8', style: PhlutsTextStyle(fontSize: 21))
                        ])),
                title: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item 8', style: PhlutsTextStyle(fontSize: 18))),
                subtitle: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item description',
                        style: PhlutsTextStyle(fontSize: 14))),
                trailing: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            PhlutsListTile(
                leading: PhlutsContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: PhlutsColumn(
                        mainAxisAlignment: PhlutsMainAxisAlignment.center,
                        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                        children: [
                          PhlutsText(
                              data: '9', style: PhlutsTextStyle(fontSize: 21))
                        ])),
                title: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item 9', style: PhlutsTextStyle(fontSize: 18))),
                subtitle: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item description',
                        style: PhlutsTextStyle(fontSize: 14))),
                trailing: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            PhlutsListTile(
                leading: PhlutsContainer(
                    height: 50,
                    width: 50,
                    color: '#165FC7',
                    child: PhlutsColumn(
                        mainAxisAlignment: PhlutsMainAxisAlignment.center,
                        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                        children: [
                          PhlutsText(
                              data: '10', style: PhlutsTextStyle(fontSize: 21))
                        ])),
                title: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item 10', style: PhlutsTextStyle(fontSize: 18))),
                subtitle: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Item description',
                        style: PhlutsTextStyle(fontSize: 14))),
                trailing: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'more_vert',
                    size: 24))
          ]));
}
