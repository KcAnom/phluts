import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'selectable_text')
PhlutsWidget selectableTextExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Selectable Text')),
    body: PhlutsSingleChildScrollView(
      child: PhlutsPadding(
        padding:
            PhlutsEdgeInsets.only(top: 12, left: 12, right: 12, bottom: 12),
        child: PhlutsColumn(
          crossAxisAlignment: PhlutsCrossAxisAlignment.start,
          children: [
            PhlutsText(
              data: 'Standard Selectable Text',
              style: PhlutsTextStyle(
                  fontSize: 18, fontWeight: PhlutsFontWeight.w600),
            ),
            PhlutsSizedBox(height: 10),
            PhlutsSelectableText(
              data:
                  'You can select this text. Long press or double tap to select.',
            ),
            PhlutsSizedBox(height: 32),
            PhlutsText(
              data: 'Rich Selectable Text',
              style: PhlutsTextStyle(
                  fontSize: 18, fontWeight: PhlutsFontWeight.w600),
            ),
            PhlutsSizedBox(height: 10),
            PhlutsSelectableText(
              data: 'This is a ',
              children: [
                PhlutsTextSpan(
                  text: 'selectable rich text.',
                  style: PhlutsTextStyle(
                      fontWeight: PhlutsFontWeight.w800, color: '#6700A4'),
                ),
              ],
            ),
            PhlutsSizedBox(height: 32),
            PhlutsText(
              data: 'Custom Cursor Selectable Text',
              style: PhlutsTextStyle(
                  fontSize: 18, fontWeight: PhlutsFontWeight.w600),
            ),
            PhlutsSizedBox(height: 10),
            PhlutsSelectableText(
              data: 'This text has a red cursor.',
              showCursor: true,
              cursorColor: '#FF0000',
              cursorWidth: 5.0,
            ),
            PhlutsSizedBox(height: 32),
            PhlutsText(
              data: 'Interactive Selection Disabled',
              style: PhlutsTextStyle(
                  fontSize: 18, fontWeight: PhlutsFontWeight.w600),
            ),
            PhlutsSizedBox(height: 10),
            PhlutsSelectableText(
              data:
                  'You cannot select this text (interactive selection disabled).',
              enableInteractiveSelection: false,
            ),
          ],
        ),
      ),
    ),
  );
}
