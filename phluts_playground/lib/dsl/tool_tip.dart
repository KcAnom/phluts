import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'tool_tip')
PhlutsWidget toolTipExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Tooltip')),
    body: PhlutsColumn(
      mainAxisAlignment: PhlutsMainAxisAlignment.center,
      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
      children: [
        PhlutsText(
          data: 'Basic Tooltip',
          style:
              PhlutsTextStyle(fontSize: 18, fontWeight: PhlutsFontWeight.bold),
        ),
        PhlutsSizedBox(height: 16),
        PhlutsRow(
          mainAxisAlignment: PhlutsMainAxisAlignment.center,
          children: [
            PhlutsTooltip(
              message: 'This is a basic tooltip',
              child: PhlutsIcon(icon: 'info', size: 32),
            ),
          ],
        ),
        PhlutsSizedBox(height: 32),
        PhlutsText(
          data: 'Styled Tooltip',
          style:
              PhlutsTextStyle(fontSize: 18, fontWeight: PhlutsFontWeight.bold),
        ),
        PhlutsSizedBox(height: 16),
        PhlutsRow(
          mainAxisAlignment: PhlutsMainAxisAlignment.center,
          children: [
            PhlutsTooltip(
              message: 'Custom styled tooltip',
              preferBelow: false,
              verticalOffset: 12,
              decoration: PhlutsBoxDecoration(
                color: '#4CAF50',
                borderRadius: PhlutsBorderRadius.only(
                  topLeft: 6,
                  topRight: 6,
                  bottomLeft: 6,
                  bottomRight: 6,
                ),
              ),
              textStyle: PhlutsTextStyle(
                color: '#FFFFFF',
                fontSize: 14,
                fontWeight: PhlutsFontWeight.bold,
              ),
              child: PhlutsIcon(icon: 'palette', size: 32),
            ),
          ],
        ),
        PhlutsSizedBox(height: 32),
        PhlutsText(
          data: 'Tooltip with Delay & Duration',
          style:
              PhlutsTextStyle(fontSize: 18, fontWeight: PhlutsFontWeight.bold),
        ),
        PhlutsSizedBox(height: 16),
        PhlutsRow(
          mainAxisAlignment: PhlutsMainAxisAlignment.center,
          children: [
            PhlutsTooltip(
              message: 'Appears after 1s, stays 3s',
              waitDuration: PhlutsDuration(milliseconds: 1000),
              showDuration: PhlutsDuration(milliseconds: 3000),
              exitDuration: PhlutsDuration(milliseconds: 300),
              child: PhlutsIcon(icon: 'timer', size: 32),
            ),
          ],
        ),
        PhlutsSizedBox(height: 32),
        PhlutsText(
          data: 'Tooltip on IconButton',
          style:
              PhlutsTextStyle(fontSize: 18, fontWeight: PhlutsFontWeight.bold),
        ),
        PhlutsSizedBox(height: 16),
        PhlutsRow(
          mainAxisAlignment: PhlutsMainAxisAlignment.center,
          children: [
            PhlutsTooltip(
              message: 'Notifications',
              child: PhlutsIconButton(
                icon: PhlutsIcon(icon: 'notifications', size: 24),
                padding:
                    PhlutsEdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                onPressed: PhlutsAction(jsonData: {'actionType': 'none'}),
              ),
            ),
          ],
        ),
        PhlutsText(
          data: 'Tap to see Tooltip',
          style:
              PhlutsTextStyle(fontSize: 18, fontWeight: PhlutsFontWeight.bold),
        ),
        PhlutsSizedBox(height: 16),
        PhlutsTooltip(
          message: 'Tap to see tooltip',
          triggerMode: PhlutsTooltipTriggerMode.tap,
          child: PhlutsIcon(icon: 'info', size: 32),
        ),
      ],
    ),
  );
}
