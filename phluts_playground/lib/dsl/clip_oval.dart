import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'clip_oval')
PhlutsWidget clipOvalExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'ClipOval')),
    body: PhlutsPadding(
      padding: PhlutsEdgeInsets.all(16.0),
      child: PhlutsColumn(
        mainAxisAlignment: PhlutsMainAxisAlignment.center,
        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
        children: [
          PhlutsText(
            data: 'Basic ClipOval with Image',
            style:
                PhlutsTextStyle(fontSize: 18.0, fontWeight: PhlutsFontWeight.w600),
          ),
          PhlutsSizedBox(height: 16.0),
          PhlutsClipOval(
            clipBehavior: PhlutsClip.antiAlias,
            child: PhlutsImage(
              src: 'https://picsum.photos/200',
              width: 200,
              height: 200,
              fit: PhlutsBoxFit.cover,
            ),
          ),
          PhlutsSizedBox(height: 32.0),
          PhlutsText(
            data: 'ClipOval with Container',
            style:
                PhlutsTextStyle(fontSize: 18.0, fontWeight: PhlutsFontWeight.w600),
          ),
          PhlutsSizedBox(height: 16.0),
          PhlutsClipOval(
            clipBehavior: PhlutsClip.antiAlias,
            child: PhlutsContainer(color: '#2196F3', height: 100, width: 200),
          ),
          PhlutsSizedBox(height: 32.0),
          PhlutsText(
            data: 'ClipOval with Text',
            style:
                PhlutsTextStyle(fontSize: 18.0, fontWeight: PhlutsFontWeight.w600),
          ),
          PhlutsSizedBox(height: 16.0),
          PhlutsClipOval(
            clipBehavior: PhlutsClip.antiAlias,
            child: PhlutsContainer(
              color: '#FF5722',
              height: 100,
              width: 100,
              child: PhlutsCenter(
                child: PhlutsText(
                  data: 'Hello',
                  style: PhlutsTextStyle(color: '#FFFFFF', fontSize: 18.0),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
