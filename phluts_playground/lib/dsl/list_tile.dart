import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'list_tile')
PhlutsWidget listTileExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Tiles')),
      body: PhlutsColumn(
          mainAxisAlignment: PhlutsMainAxisAlignment.start,
          crossAxisAlignment: PhlutsCrossAxisAlignment.center,
          children: [
            PhlutsSizedBox(height: 12),
            PhlutsListTile(
                leading: PhlutsIcon(icon: 'person'),
                title: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Andrew Symonds',
                        style: PhlutsTextStyle(fontSize: 18))),
                subtitle: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data:
                            'Andrew Symonds was an Australian international cricketer, who played all three formats as a batting all-rounder. Commonly nicknamed "Roy", he was a key member of two World Cup winning squads. Symonds played as a right-handed, middle order batsman and alternated between medium pace and off-spin',
                        style: PhlutsTextStyle(fontSize: 14))),
                trailing: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'more_vert',
                    size: 24)),
            PhlutsSizedBox(height: 12),
            PhlutsListTile(
                leading: PhlutsIcon(icon: 'person'),
                title: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data: 'Adam Gilchrist',
                        style: PhlutsTextStyle(fontSize: 18))),
                subtitle: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(top: 10),
                    child: PhlutsText(
                        data:
                            'Adam Craig Gilchrist is an Australian cricket commentator and former international cricketer and captain of the Australia national cricket team. He was an attacking left-handed batsman and record-breaking wicket-keeper',
                        style: PhlutsTextStyle(fontSize: 14))),
                trailing: PhlutsIcon(
                    iconType: PhlutsIconType.material,
                    icon: 'more_vert',
                    size: 24))
          ]));
}
