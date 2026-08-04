import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'dialog')
PhlutsWidget dialogExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Dialogs')),
    body: PhlutsRow(
      mainAxisAlignment: PhlutsMainAxisAlignment.center,
      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
      children: [
        PhlutsColumn(
          mainAxisAlignment: PhlutsMainAxisAlignment.center,
          crossAxisAlignment: PhlutsCrossAxisAlignment.center,
          children: [
            PhlutsElevatedButton(
              style: PhlutsButtonStyle(
                padding: PhlutsEdgeInsets.only(
                  top: 8,
                  left: 12,
                  right: 12,
                  bottom: 8,
                ),
              ),
              onPressed: PhlutsDialogAction(
                widget: PhlutsAlertDialog(
                  content: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(
                      top: 0,
                      left: 12,
                      right: 12,
                      bottom: 8,
                    ),
                    child: PhlutsText(
                      data: 'Discard draft?',
                      style: PhlutsTextStyle(fontSize: 14),
                    ),
                  ),
                  actions: [
                    PhlutsTextButton(
                      onPressed: PhlutsNavigateAction(
                        navigationStyle: NavigationStyle.pop,
                      ),
                      child: PhlutsText(data: 'CANCEL'),
                    ),
                    PhlutsSizedBox(width: 8),
                    PhlutsTextButton(
                      onPressed: PhlutsNavigateAction(
                        navigationStyle: NavigationStyle.pop,
                      ),
                      child: PhlutsText(data: 'DISCARD'),
                    ),
                    PhlutsSizedBox(width: 12),
                  ],
                ).toJson(),
              ),
              child: PhlutsText(data: 'SIMPLE ALERT'),
            ),
            PhlutsSizedBox(height: 12),
            PhlutsElevatedButton(
              style: PhlutsButtonStyle(
                padding: PhlutsEdgeInsets.only(
                  top: 8,
                  left: 12,
                  right: 12,
                  bottom: 8,
                ),
              ),
              onPressed: PhlutsDialogAction(
                widget: PhlutsAlertDialog(
                  title: PhlutsText(
                    data: "Use Google's Location Services?",
                    style: PhlutsTextStyle(fontSize: 21),
                  ),
                  content: PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(
                      top: 24,
                      left: 12,
                      right: 12,
                      bottom: 8,
                    ),
                    child: PhlutsText(
                      data: 'Let Google help apps determine location.',
                      style: PhlutsTextStyle(fontSize: 14),
                    ),
                  ),
                  actions: [
                    PhlutsTextButton(
                      onPressed: PhlutsNavigateAction(
                        navigationStyle: NavigationStyle.pop,
                      ),
                      child: PhlutsText(data: 'DISAGREE'),
                    ),
                    PhlutsSizedBox(width: 8),
                    PhlutsTextButton(
                      onPressed: PhlutsNavigateAction(
                        navigationStyle: NavigationStyle.pop,
                      ),
                      child: PhlutsText(data: 'AGREE'),
                    ),
                    PhlutsSizedBox(width: 12),
                  ],
                ).toJson(),
              ),
              child: PhlutsText(data: 'ALERT WITH TITLE'),
            ),
          ],
        ),
      ],
    ),
  );
}
