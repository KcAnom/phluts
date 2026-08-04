import 'package:movie_app/constants/app_constants.dart';
import 'package:phluts/phluts_core.dart';

@PhlutsScreen(screenName: 'detail_screen')
PhlutsWidget detailScreen() {
  return PhlutsScaffold(
    extendBodyBehindAppBar: true,
    appBar: PhlutsAppBar(
      backgroundColor: 'transparent',
      leading: PhlutsIconButton(
        icon: PhlutsIcon(icon: 'chevron_left', color: 'onSurface'),
        style: PhlutsButtonStyle(
          backgroundColor: '#50050608',
          fixedSize: PhlutsSize(36, 36),
        ),
        onPressed: PhlutsAction(
          jsonData: {'actionType': 'navigate', 'navigationStyle': 'pop'},
        ),
      ),
    ),
    body: PhlutsDynamicView(
      request: PhlutsNetworkRequest(
        url: '${AppApi.baseUrl}/movie/{{movie_id}}?language=${AppApi.language}',
        method: Method.get,
      ),
      template: PhlutsSingleChildScrollView(
        child: PhlutsColumn(
          children: [
            PhlutsStack(
              children: [
                PhlutsImage(
                  src: '${AppApi.imageBaseUrl}/{{poster_path}}',
                  width: double.maxFinite,
                  height: 480,
                  fit: PhlutsBoxFit.cover,
                ),
                PhlutsPositioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: PhlutsContainer(
                    height: 240,
                    decoration: PhlutsBoxDecoration(
                      gradient: PhlutsGradient.linear(
                        colors: ['#00050608', '#050608'],
                        begin: PhlutsAlignment.topCenter,
                        end: PhlutsAlignment.bottomCenter,
                        stops: [0.0, 1.0],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            PhlutsPadding(
              padding: PhlutsEdgeInsets.only(left: 16, right: 16),
              child: PhlutsColumn(
                crossAxisAlignment: PhlutsCrossAxisAlignment.start,
                children: [
                  PhlutsRow(
                    mainAxisAlignment: PhlutsMainAxisAlignment.spaceBetween,
                    children: [
                      PhlutsExpanded(
                        child: PhlutsText(
                          data: '{{title}}',
                          style: PhlutsThemeData.textTheme.headlineMedium,
                          overflow: PhlutsTextOverflow.ellipsis,
                        ),
                      ),
                      PhlutsContainer(
                        height: 24,
                        decoration: PhlutsBoxDecoration(
                          borderRadius: PhlutsBorderRadius.all(4),
                          color: 'primary',
                        ),
                        child: PhlutsRow(
                          children: [
                            PhlutsSizedBox(width: 6),
                            PhlutsIcon(
                              icon: 'star_rounded',
                              color: 'onPrimary',
                              size: 14,
                            ),
                            PhlutsSizedBox(width: 2),
                            PhlutsText(
                              data: '{{vote_average}}',
                              style: PhlutsCustomTextStyle(
                                color: 'onPrimary',
                                fontSize: 14,
                              ),
                            ),
                            PhlutsSizedBox(width: 6),
                          ],
                        ),
                      ),
                    ],
                  ),
                  PhlutsDivider(),
                  PhlutsText(
                    data: '{{release_date}} · {{runtime}} mins',
                    style: PhlutsThemeData.textTheme.bodySmall,
                    textAlign: PhlutsTextAlign.left,
                  ),
                  PhlutsDivider(),
                  PhlutsRow(
                    children: [
                      PhlutsExpanded(
                        child: PhlutsFilledButton(
                          child: PhlutsRow(
                            mainAxisAlignment: PhlutsMainAxisAlignment.center,
                            children: [
                              PhlutsIcon(icon: 'play_circle_filled', size: 24),
                              PhlutsSizedBox(width: 6),
                              PhlutsText(data: AppStrings.watchTrailer),
                            ],
                          ),
                          onPressed: null,
                        ),
                      ),
                      PhlutsSizedBox(width: 16),
                      PhlutsOutlinedButton(
                        child: PhlutsRow(
                          mainAxisAlignment: PhlutsMainAxisAlignment.center,
                          children: [
                            PhlutsIcon(icon: 'favorite_outline', size: 24),
                            PhlutsSizedBox(width: 6),
                            PhlutsText(data: AppStrings.addToWatchlist),
                          ],
                        ),
                        onPressed: null,
                      ),
                    ],
                  ),
                  PhlutsSizedBox(height: 24),
                  PhlutsColumn(
                    crossAxisAlignment: PhlutsCrossAxisAlignment.start,
                    children: [
                      PhlutsText(
                        data: AppStrings.about,
                        style: PhlutsThemeData.textTheme.bodyMedium,
                      ),
                      PhlutsSizedBox(height: 4),
                      PhlutsContainer(width: 24, height: 2, color: 'primary'),
                    ],
                  ),
                  PhlutsSizedBox(height: 20),
                  PhlutsText(
                    data: '{{overview}}',
                    style: PhlutsThemeData.textTheme.bodyMedium,
                  ),
                  PhlutsSizedBox(height: 24),
                  PhlutsColumn(
                    crossAxisAlignment: PhlutsCrossAxisAlignment.start,
                    children: [
                      PhlutsText(
                        data: AppStrings.cast,
                        style: PhlutsCustomTextStyle(
                          fontSize: 16,
                          fontWeight: PhlutsFontWeight.w600,
                          height: 1.3,
                          color: 'onSurfaceVariant',
                        ),
                      ),
                      PhlutsSizedBox(height: 10),
                      PhlutsSizedBox(
                        height: 146,
                        child: PhlutsDynamicView(
                          request: PhlutsNetworkRequest(
                            url:
                                '${AppApi.baseUrl}/movie/{{movie_id}}/credits?language=${AppApi.language}',
                            method: Method.get,
                          ),
                          targetPath: 'cast',
                          template: _buildCastListViewTemplate(),
                        ),
                      ),
                    ],
                  ),
                  PhlutsSizedBox(height: 24),
                  PhlutsColumn(
                    crossAxisAlignment: PhlutsCrossAxisAlignment.start,
                    children: [
                      PhlutsText(
                        data: AppStrings.similarMovies,
                        style: PhlutsCustomTextStyle(
                          fontSize: 16,
                          fontWeight: PhlutsFontWeight.w600,
                          height: 1.3,
                          color: 'onSurfaceVariant',
                        ),
                      ),
                      PhlutsSizedBox(height: 10),
                      PhlutsSizedBox(
                        height: 164,
                        child: PhlutsDynamicView(
                          request: PhlutsNetworkRequest(
                            url:
                                '${AppApi.baseUrl}/movie/{{movie_id}}/similar?language=${AppApi.language}&page=1',
                            method: Method.get,
                          ),
                          targetPath: 'results',
                          resultTarget: 'data',
                          template: _buildSimilarMoviesListViewTemplate(),
                        ),
                      ),
                    ],
                  ),
                  PhlutsSizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

/// Helper function to build a ListView template with itemTemplate for cast list.
PhlutsWidget _buildCastListViewTemplate() {
  final templateJson = {
    'type': 'listView',
    'scrollDirection': 'horizontal',
    'shrinkWrap': true,
    'separator': PhlutsSizedBox(width: 16).toJson(),
    'itemTemplate': PhlutsSizedBox(
      width: 80,
      child: PhlutsColumn(
        crossAxisAlignment: PhlutsCrossAxisAlignment.start,
        children: [
          PhlutsClipRRect(
            borderRadius: PhlutsBorderRadius.all(6),
            child: PhlutsImage(
              src: '${AppApi.imageBaseUrl}/{{profile_path}}',
              fit: PhlutsBoxFit.cover,
              width: 80,
              height: 96,
            ),
          ),
          PhlutsSizedBox(height: 8),
          PhlutsText(
            data: '{{name}}',
            style: PhlutsThemeData.textTheme.titleSmall,
            overflow: PhlutsTextOverflow.ellipsis,
          ),
          PhlutsText(
            data: '{{character}}',
            style: PhlutsThemeData.textTheme.bodySmall,
            overflow: PhlutsTextOverflow.ellipsis,
          ),
        ],
      ),
    ).toJson(),
  };

  return PhlutsWidget(jsonData: templateJson);
}

/// Helper function to build a ListView template with itemTemplate for similar movies.
PhlutsWidget _buildSimilarMoviesListViewTemplate() {
  final templateJson = {
    'type': 'listView',
    'scrollDirection': 'horizontal',
    'shrinkWrap': true,
    'separator': PhlutsSizedBox(width: 8).toJson(),
    'itemTemplate': PhlutsGestureDetector(
      onTap: PhlutsSetValueAction(
        values: [
          {'key': 'movie_id', 'value': '{{data.id}}'},
        ],
        action: PhlutsNavigator.pushPhluts('detail_screen'),
      ),
      child: PhlutsClipRRect(
        borderRadius: PhlutsBorderRadius.all(6),
        child: PhlutsImage(
          imageType: PhlutsImageType.network,
          src: '${AppApi.imageBaseUrl}/{{data.poster_path}}',
          width: 108,
          height: 164,
        ),
      ),
    ).toJson(),
  };

  return PhlutsWidget(jsonData: templateJson);
}
