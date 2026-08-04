import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'chip')
PhlutsWidget chipExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Chip')),
    body: PhlutsColumn(
      mainAxisAlignment: PhlutsMainAxisAlignment.center,
      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
      children: [
        PhlutsRow(
          mainAxisAlignment: PhlutsMainAxisAlignment.center,
          crossAxisAlignment: PhlutsCrossAxisAlignment.center,
          children: [
            PhlutsChip(
              avatar: PhlutsIcon(iconType: PhlutsIconType.material, icon: 'tune'),
              label: PhlutsText(data: 'Chip', style: PhlutsTextStyle(fontSize: 21)),
            ),
            PhlutsSizedBox(width: 20),
            PhlutsChip(
              autofocus: true,
              deleteIcon: PhlutsIcon(
                iconType: PhlutsIconType.material,
                icon: 'close',
                size: 20,
              ),
              label: PhlutsText(data: 'Chip', style: PhlutsTextStyle(fontSize: 21)),
            ),
          ],
        ),
        PhlutsRow(
          mainAxisAlignment: PhlutsMainAxisAlignment.center,
          crossAxisAlignment: PhlutsCrossAxisAlignment.center,
          children: [
            PhlutsChip(
              avatar: PhlutsIcon(iconType: PhlutsIconType.material, icon: 'tune'),
              label: PhlutsText(
                data: 'Round Chip',
                style: PhlutsTextStyle(fontSize: 21),
              ),
              shape: PhlutsRoundedRectangleBorder(
                borderRadius: PhlutsBorderRadius.only(
                  topLeft: 8,
                  topRight: 8,
                  bottomLeft: 8,
                  bottomRight: 8,
                ),
              ),
            ),
            PhlutsSizedBox(width: 20),
            PhlutsChip(
              autofocus: true,
              deleteIcon: PhlutsIcon(
                iconType: PhlutsIconType.material,
                icon: 'close',
                size: 20,
              ),
              label: PhlutsText(
                data: 'Round Chip',
                style: PhlutsTextStyle(fontSize: 21),
              ),
              elevation: 8,
              shape: PhlutsRoundedRectangleBorder(
                borderRadius: PhlutsBorderRadius.only(
                  topLeft: 8,
                  topRight: 8,
                  bottomLeft: 8,
                  bottomRight: 8,
                ),
              ),
            ),
          ],
        ),
        PhlutsRow(
          mainAxisAlignment: PhlutsMainAxisAlignment.center,
          crossAxisAlignment: PhlutsCrossAxisAlignment.center,
          children: [
            PhlutsChip(
              color: '#6d81b3',
              avatar: PhlutsIcon(
                color: '#ffffff',
                iconType: PhlutsIconType.material,
                icon: 'tune',
              ),
              label: PhlutsText(
                data: 'Color Chip',
                style: PhlutsTextStyle(fontSize: 21, color: '#ffffff'),
              ),
              shape: PhlutsRoundedRectangleBorder(
                borderRadius: PhlutsBorderRadius.only(
                  topLeft: 8,
                  topRight: 8,
                  bottomLeft: 8,
                  bottomRight: 8,
                ),
              ),
            ),
            PhlutsSizedBox(width: 20),
            PhlutsChip(
              color: '#6d81b3',
              deleteIcon: PhlutsIcon(
                color: '#ffffff',
                iconType: PhlutsIconType.material,
                icon: 'close',
                size: 20,
              ),
              label: PhlutsText(
                data: 'Color Chip',
                style: PhlutsTextStyle(color: '#ffffff', fontSize: 21),
              ),
              shape: PhlutsRoundedRectangleBorder(
                borderRadius: PhlutsBorderRadius.only(
                  topLeft: 8,
                  topRight: 8,
                  bottomLeft: 8,
                  bottomRight: 8,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
