import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'carousel_view')
PhlutsWidget carouselViewExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Carousel View')),
    body: PhlutsListView(
      children: [
        PhlutsContainer(
          height: 400,
          child: PhlutsCarouselView(
            padding: PhlutsEdgeInsets.all(12),
            carouselType: PhlutsCarouselViewType.weighted,
            itemSnapping: true,
            flexWeights: [1, 7, 1],
            children: [
              PhlutsImage(
                height: 400,
                fit: PhlutsBoxFit.cover,
                src:
                    'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_1.png',
              ),
              PhlutsImage(
                height: 400,
                fit: PhlutsBoxFit.cover,
                src:
                    'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_2.png',
              ),
              PhlutsImage(
                height: 400,
                fit: PhlutsBoxFit.cover,
                src:
                    'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_3.png',
              ),
              PhlutsImage(
                height: 400,
                fit: PhlutsBoxFit.cover,
                src:
                    'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_4.png',
              ),
              PhlutsImage(
                height: 400,
                fit: PhlutsBoxFit.cover,
                src:
                    'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_5.png',
              ),
              PhlutsImage(
                height: 400,
                fit: PhlutsBoxFit.cover,
                src:
                    'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_6.png',
              ),
            ],
          ),
        ),
        PhlutsContainer(
          height: 200,
          child: PhlutsCarouselView(
            itemExtent: 300,
            shrinkExtent: 80,
            padding: PhlutsEdgeInsets.all(12),
            children: [
              PhlutsContainer(
                color: '#FFCDD2',
                child: PhlutsCenter(
                  child: PhlutsText(
                    data: 'Show 0',
                    style: PhlutsTextStyle(
                      color: '#FFFFFF',
                      fontSize: 20,
                      fontWeight: PhlutsFontWeight.w400,
                    ),
                  ),
                ),
              ),
              PhlutsContainer(
                color: '#C8E6C9',
                child: PhlutsCenter(
                  child: PhlutsText(
                    data: 'Show 1',
                    style: PhlutsTextStyle(
                      color: '#FFFFFF',
                      fontSize: 20,
                      fontWeight: PhlutsFontWeight.w400,
                    ),
                  ),
                ),
              ),
              PhlutsContainer(
                color: '#BBDEFB',
                child: PhlutsCenter(
                  child: PhlutsText(
                    data: 'Show 2',
                    style: PhlutsTextStyle(
                      color: '#FFFFFF',
                      fontSize: 20,
                      fontWeight: PhlutsFontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
