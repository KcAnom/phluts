import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'image')
PhlutsWidget imageExample() {
  return PhlutsScaffold(
      appBar: PhlutsAppBar(title: PhlutsText(data: 'Image')),
      body: PhlutsSingleChildScrollView(
          child: PhlutsRow(
              mainAxisAlignment: PhlutsMainAxisAlignment.center,
              crossAxisAlignment: PhlutsCrossAxisAlignment.center,
              children: [
            PhlutsColumn(
                mainAxisAlignment: PhlutsMainAxisAlignment.center,
                crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                children: [
                  PhlutsSizedBox(height: 24),
                  PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.center,
                      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                      children: [
                        PhlutsGestureDetector(
                            child: PhlutsImage(
                                src:
                                    'https://images.pexels.com/photos/15113967/pexels-photo-15113967.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                                height: 150),
                            onTap: PhlutsNavigateAction(
                                assetPath: 'assets/json/form_example.json')),
                        PhlutsSizedBox(width: 20),
                        PhlutsImage(
                            src: 'assets/images/logo_console.png',
                            imageType: PhlutsImageType.asset,
                            height: 150)
                      ]),
                  PhlutsSizedBox(height: 24),
                  PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.center,
                      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                      children: [
                        PhlutsImage(
                            src:
                                'https://images.pexels.com/photos/15352100/pexels-photo-15352100.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            height: 150),
                        PhlutsSizedBox(width: 20),
                        PhlutsImage(
                            src:
                                'https://images.pexels.com/photos/15373031/pexels-photo-15373031.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            height: 150)
                      ]),
                  PhlutsSizedBox(height: 24),
                  PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.center,
                      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                      children: [
                        PhlutsImage(
                            src:
                                'https://images.pexels.com/photos/10041677/pexels-photo-10041677.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            height: 150),
                        PhlutsSizedBox(width: 20),
                        PhlutsImage(
                            src: 'assets/images/dart_logo.png',
                            imageType: PhlutsImageType.asset,
                            height: 150,
                            width: 100,
                            fit: PhlutsBoxFit.fill)
                      ]),
                  PhlutsSizedBox(height: 24),
                  PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.center,
                      crossAxisAlignment: PhlutsCrossAxisAlignment.center,
                      children: [
                        PhlutsImage(
                            src:
                                'http://upload.wikimedia.org/wikipedia/commons/0/02/SVG_logo.svg',
                            height: 100,
                            width: 100),
                        PhlutsSizedBox(width: 20),
                        PhlutsImage(
                            imageType: PhlutsImageType.asset,
                            src: 'assets/images/logo.svg',
                            color: 'primary',
                            height: 100,
                            width: 100)
                      ]),
                  PhlutsSizedBox(height: 24)
                ])
          ])));
}
