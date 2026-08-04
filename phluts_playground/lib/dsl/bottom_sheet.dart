import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'bottom_sheet')
PhlutsWidget bottomSheetExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'BottomSheet')),
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
              onPressed: PhlutsModalBottomSheetAction(
                widget: PhlutsContainer(
                  height: 200,
                  padding: PhlutsEdgeInsets.only(
                    top: 16,
                    left: 16,
                    right: 16,
                    bottom: 16,
                  ),
                  child: PhlutsColumn(
                    children: [
                      PhlutsRow(
                        mainAxisAlignment: PhlutsMainAxisAlignment.spaceBetween,
                        children: [
                          PhlutsText(
                            data: 'Modal Bottom Sheet',
                            style: PhlutsTextStyle(
                              fontSize: 18,
                              fontWeight: PhlutsFontWeight.bold,
                            ),
                          ),
                          PhlutsIconButton(
                            icon: PhlutsIcon(
                              iconType: PhlutsIconType.material,
                              icon: 'close',
                            ),
                            onPressed: PhlutsNavigateAction(
                              navigationStyle: NavigationStyle.pop,
                            ),
                          ),
                        ],
                      ),
                      PhlutsPadding(
                        padding: PhlutsEdgeInsets.only(top: 16),
                        child: PhlutsText(
                          data: 'This is a simple modal bottom sheet example.',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              child: PhlutsText(data: 'Modal Bottom Sheet'),
            ),
          ],
        ),
      ],
    ),
  );
}
