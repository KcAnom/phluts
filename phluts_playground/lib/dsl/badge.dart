import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'badge')
PhlutsWidget badgeExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Badge')),
      body: PhlutsColumn(
          mainAxisAlignment: PhlutsMainAxisAlignment.center,
          crossAxisAlignment: PhlutsCrossAxisAlignment.center,
          children: [
            PhlutsText(
                data: 'Badge with Label',
                style: PhlutsTextStyle(
                    fontSize: 18, fontWeight: PhlutsFontWeight.bold)),
            PhlutsSizedBox(height: 16),
            PhlutsRow(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                children: [
                  PhlutsBadge(
                      label: PhlutsText(data: '5'),
                      child: PhlutsIcon(icon: 'notifications', size: 32)),
                  PhlutsSizedBox(width: 24),
                  PhlutsBadge(
                      label: PhlutsText(data: 'NEW'),
                      backgroundColor: '#4CAF50',
                      textColor: '#FFFFFF',
                      child: PhlutsIcon(icon: 'mail', size: 32))
                ]),
            PhlutsSizedBox(height: 32),
            PhlutsText(
                data: 'Badge with Count',
                style: PhlutsTextStyle(
                    fontSize: 18, fontWeight: PhlutsFontWeight.bold)),
            PhlutsSizedBox(height: 16),
            PhlutsRow(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                children: [
                  PhlutsBadge(
                      count: 5,
                      child: PhlutsIcon(icon: 'shopping_cart', size: 32)),
                  PhlutsSizedBox(width: 24),
                  PhlutsBadge(
                      count: 99,
                      maxCount: 99,
                      child: PhlutsIcon(icon: 'favorite', size: 32)),
                  PhlutsSizedBox(width: 24),
                  PhlutsBadge(
                      count: 1000,
                      maxCount: 99,
                      child: PhlutsIcon(icon: 'notifications', size: 32))
                ]),
            PhlutsSizedBox(height: 32),
            PhlutsText(
                data: 'Small Badge (No Label)',
                style: PhlutsTextStyle(
                    fontSize: 18, fontWeight: PhlutsFontWeight.bold)),
            PhlutsSizedBox(height: 16),
            PhlutsRow(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                children: [
                  PhlutsBadge(
                      smallSize: 8,
                      backgroundColor: '#F44336',
                      child: PhlutsIcon(icon: 'circle', size: 32)),
                  PhlutsSizedBox(width: 24),
                  PhlutsBadge(
                      smallSize: 12,
                      backgroundColor: '#4CAF50',
                      child: PhlutsIcon(icon: 'check_circle', size: 32))
                ]),
            PhlutsSizedBox(height: 32),
            PhlutsText(
                data: 'Badge on IconButton',
                style: PhlutsTextStyle(
                    fontSize: 18, fontWeight: PhlutsFontWeight.bold)),
            PhlutsSizedBox(height: 16),
            PhlutsBadge(
                count: 3,
                child: PhlutsIconButton(
                    icon: PhlutsIcon(icon: 'notifications', size: 24),
                    padding: PhlutsEdgeInsets.only(
                        left: 0, top: 0, right: 0, bottom: 0)))
          ]));
}
