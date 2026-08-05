import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'backdrop_filter')
PhlutsWidget backdropFilterExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Backdrop Filter Example')),
    body: PhlutsSingleChildScrollView(
      child: PhlutsColumn(
        mainAxisAlignment: PhlutsMainAxisAlignment.center,
        crossAxisAlignment: PhlutsCrossAxisAlignment.center,
        children: [
          PhlutsPadding(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsText(
              data:
                  'Backdrop filters apply visual effects to everything behind a widget.',
              textAlign: PhlutsTextAlign.center,
              style: PhlutsTextStyle(
                  fontSize: 16, fontWeight: PhlutsFontWeight.w700),
            ),
          ),
          PhlutsDivider(height: 20),
          PhlutsPadding(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsText(
              data: 'Blur Filter with sigmaX: 10.0, sigmaY: 10.0',
              style: PhlutsTextStyle(fontSize: 18),
            ),
          ),
          PhlutsClipRRect(
            borderRadius: PhlutsBorderRadius.all(16),
            child: PhlutsSizedBox(
              height: 200,
              width: 300,
              child: PhlutsStack(
                fit: PhlutsStackFit.expand,
                children: [
                  PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                      image: PhlutsDecorationImage(
                        src:
                            'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg',
                        fit: PhlutsBoxFit.cover,
                      ),
                    ),
                  ),
                  PhlutsBackdropFilter(
                    filter: PhlutsImageFilter(
                      type: PhlutsImageFilterType.blur,
                      sigmaX: 10.0,
                      sigmaY: 10.0,
                    ),
                    child: PhlutsContainer(
                      decoration: PhlutsBoxDecoration(color: '#80FFFFFF'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PhlutsDivider(height: 20),
          PhlutsPadding(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsText(
              data: 'Dilate Filter with radiusX: 2.0, radiusY: 2.0',
              style: PhlutsTextStyle(fontSize: 18),
            ),
          ),
          PhlutsClipRRect(
            borderRadius: PhlutsBorderRadius.all(16),
            child: PhlutsSizedBox(
              height: 200,
              width: 300,
              child: PhlutsStack(
                fit: PhlutsStackFit.expand,
                children: [
                  PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                      image: PhlutsDecorationImage(
                        src:
                            'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg',
                        fit: PhlutsBoxFit.cover,
                      ),
                    ),
                  ),
                  PhlutsBackdropFilter(
                    filter: PhlutsImageFilter(
                      type: PhlutsImageFilterType.dilate,
                      radiusX: 2.0,
                      radiusY: 2.0,
                    ),
                    child: PhlutsContainer(
                      decoration: PhlutsBoxDecoration(color: '#80FFFFFF'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PhlutsDivider(height: 20),
          PhlutsPadding(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsText(
              data: 'Erode Filter with radiusX: 2.0, radiusY: 2.0',
              style: PhlutsTextStyle(fontSize: 18),
            ),
          ),
          PhlutsClipRRect(
            borderRadius: PhlutsBorderRadius.all(16),
            child: PhlutsSizedBox(
              height: 200,
              width: 300,
              child: PhlutsStack(
                fit: PhlutsStackFit.expand,
                children: [
                  PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                      image: PhlutsDecorationImage(
                        src:
                            'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg',
                        fit: PhlutsBoxFit.cover,
                      ),
                    ),
                  ),
                  PhlutsBackdropFilter(
                    filter: PhlutsImageFilter(
                      type: PhlutsImageFilterType.erode,
                      radiusX: 2.0,
                      radiusY: 2.0,
                    ),
                    child: PhlutsContainer(
                      decoration: PhlutsBoxDecoration(color: '#80FFFFFF'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PhlutsDivider(height: 20),
          PhlutsPadding(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsText(
              data: 'Frosted Glass Effect with sigmaX: 15.0, sigmaY: 15.0',
              style: PhlutsTextStyle(fontSize: 18),
            ),
          ),
          PhlutsClipRRect(
            borderRadius: PhlutsBorderRadius.all(16),
            child: PhlutsSizedBox(
              height: 200,
              width: 300,
              child: PhlutsStack(
                fit: PhlutsStackFit.expand,
                children: [
                  PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                      image: PhlutsDecorationImage(
                        src:
                            'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg',
                        fit: PhlutsBoxFit.cover,
                      ),
                    ),
                  ),
                  PhlutsBackdropFilter(
                    filter: PhlutsImageFilter(
                      type: PhlutsImageFilterType.blur,
                      sigmaX: 15.0,
                      sigmaY: 15.0,
                    ),
                    child: PhlutsContainer(
                      decoration: PhlutsBoxDecoration(color: '#80FFFFFF'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PhlutsDivider(height: 20),
          PhlutsPadding(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsText(
              data: 'Compose Filter (Blur + Dilate)',
              style: PhlutsTextStyle(fontSize: 18),
            ),
          ),
          PhlutsClipRRect(
            borderRadius: PhlutsBorderRadius.all(16),
            child: PhlutsSizedBox(
              height: 200,
              width: 300,
              child: PhlutsStack(
                fit: PhlutsStackFit.expand,
                children: [
                  PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                      image: PhlutsDecorationImage(
                        src:
                            'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg',
                        fit: PhlutsBoxFit.cover,
                      ),
                    ),
                  ),
                  PhlutsBackdropFilter(
                    filter: PhlutsImageFilter(
                      type: PhlutsImageFilterType.compose,
                      outer: PhlutsImageFilter(
                        type: PhlutsImageFilterType.blur,
                        sigmaX: 5.0,
                        sigmaY: 5.0,
                      ),
                      inner: PhlutsImageFilter(
                        type: PhlutsImageFilterType.dilate,
                        radiusX: 2.0,
                        radiusY: 2.0,
                      ),
                    ),
                    child: PhlutsContainer(
                      decoration: PhlutsBoxDecoration(color: '#80FFFFFF'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PhlutsDivider(height: 20),
          PhlutsPadding(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsText(
              data: 'Blur Filter with BlendMode dstOver',
              style: PhlutsTextStyle(fontSize: 18),
            ),
          ),
          PhlutsClipRRect(
            borderRadius: PhlutsBorderRadius.all(16),
            child: PhlutsSizedBox(
              height: 200,
              width: 300,
              child: PhlutsStack(
                fit: PhlutsStackFit.expand,
                children: [
                  PhlutsContainer(
                    decoration: PhlutsBoxDecoration(
                      image: PhlutsDecorationImage(
                        src:
                            'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg',
                        fit: PhlutsBoxFit.cover,
                      ),
                    ),
                  ),
                  PhlutsBackdropFilter(
                    filter: PhlutsImageFilter(
                      type: PhlutsImageFilterType.blur,
                      radiusX: 10.0,
                      radiusY: 10.0,
                    ),
                    blendMode: PhlutsBlendMode.dstOver,
                    child: PhlutsContainer(
                      decoration: PhlutsBoxDecoration(color: '#80FFFFFF'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PhlutsDivider(height: 20),
        ],
      ),
    ),
  );
}
