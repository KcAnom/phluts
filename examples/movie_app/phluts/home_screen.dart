import 'package:movie_app/constants/app_constants.dart';
import 'package:movie_app/widgets/movie_carousel/movie_carousel.dart';
import 'package:phluts/phluts_core.dart';

@PhlutsScreen(screenName: 'home_screen')
PhlutsWidget homeScreen() {
  return PhlutsDefaultBottomNavigationController(
    length: 3,
    child: PhlutsScaffold(
      extendBodyBehindAppBar: true,
      body: PhlutsBottomNavigationView(
        children: [
          PhlutsListView(
            padding: PhlutsEdgeInsets.all(0),
            children: [
              PhlutsMovieCarousel(
                request: PhlutsNetworkRequest(
                  url: AppApi.getTrendingMoviesUrl(),
                  method: Method.get,
                ),
              ),
              PhlutsColumn(
                children: [
                  PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 24,
                      bottom: 10,
                    ),
                    child: PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.spaceBetween,
                      children: [
                        PhlutsText(
                          data: AppStrings.nowPlaying,
                          style: PhlutsThemeData.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  PhlutsSizedBox(
                    height: 164,
                    child: PhlutsDynamicView(
                      request: PhlutsNetworkRequest(
                        url: AppApi.getNowPlayingMoviesUrl(),
                        method: Method.get,
                      ),
                      targetPath: 'results',
                      template: _buildMovieListViewTemplate(),
                    ),
                  ),
                ],
              ),
              PhlutsColumn(
                children: [
                  PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 24,
                      bottom: 10,
                    ),
                    child: PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.spaceBetween,
                      children: [
                        PhlutsText(
                          data: AppStrings.popularMovies,
                          style: PhlutsThemeData.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  PhlutsSizedBox(
                    height: 164,
                    child: PhlutsDynamicView(
                      request: PhlutsNetworkRequest(
                        url: AppApi.getPopularMoviesUrl(),
                        method: Method.get,
                      ),
                      targetPath: 'results',
                      template: _buildMovieListViewTemplate(),
                    ),
                  ),
                ],
              ),
              PhlutsColumn(
                children: [
                  PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 24,
                      bottom: 10,
                    ),
                    child: PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.spaceBetween,
                      children: [
                        PhlutsText(
                          data: AppStrings.trendingMovies,
                          style: PhlutsThemeData.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  PhlutsSizedBox(
                    height: 164,
                    child: PhlutsDynamicView(
                      request: PhlutsNetworkRequest(
                        url: AppApi.getTrendingMoviesUrl(),
                        method: Method.get,
                      ),
                      targetPath: 'results',
                      template: _buildMovieListViewTemplate(),
                    ),
                  ),
                ],
              ),
              PhlutsColumn(
                children: [
                  PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 24,
                      bottom: 10,
                    ),
                    child: PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.spaceBetween,
                      children: [
                        PhlutsText(
                          data: AppStrings.topRated,
                          style: PhlutsThemeData.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  PhlutsSizedBox(
                    height: 164,
                    child: PhlutsDynamicView(
                      request: PhlutsNetworkRequest(
                        url: AppApi.getTopRatedMoviesUrl(),
                        method: Method.get,
                      ),
                      targetPath: 'results',
                      template: _buildMovieListViewTemplate(),
                    ),
                  ),
                ],
              ),
              PhlutsColumn(
                children: [
                  PhlutsPadding(
                    padding: PhlutsEdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 24,
                      bottom: 10,
                    ),
                    child: PhlutsRow(
                      mainAxisAlignment: PhlutsMainAxisAlignment.spaceBetween,
                      children: [
                        PhlutsText(
                          data: AppStrings.upcomingMovies,
                          style: PhlutsThemeData.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  PhlutsSizedBox(
                    height: 164,
                    child: PhlutsDynamicView(
                      request: PhlutsNetworkRequest(
                        url: AppApi.getUpcomingMoviesUrl(),
                        method: Method.get,
                      ),
                      targetPath: 'results',
                      template: _buildMovieListViewTemplate(),
                    ),
                  ),
                ],
              ),
              PhlutsSizedBox(height: 80),
            ],
          ),
          PhlutsCenter(child: PhlutsText(data: AppStrings.search)),
          PhlutsCenter(child: PhlutsText(data: AppStrings.profile)),
        ],
      ),
      bottomNavigationBar: PhlutsBottomNavigationBar(
        items: [
          PhlutsBottomNavigationBarItem(
            label: AppStrings.bottomNavHome,
            icon: PhlutsIcon(icon: 'home_outlined'),
          ),
          PhlutsBottomNavigationBarItem(
            label: AppStrings.bottomNavSearch,
            icon: PhlutsIcon(icon: 'search_outlined'),
          ),
          PhlutsBottomNavigationBarItem(
            label: AppStrings.bottomNavProfile,
            icon: PhlutsIcon(icon: 'person_outlined'),
          ),
        ],
      ),
    ),
  );
}

/// Helper function to build a ListView template with itemTemplate for movie lists.
/// Note: itemTemplate is a parser-specific feature handled by the dynamicView parser.
/// We construct the template as JSON to include itemTemplate.
PhlutsWidget _buildMovieListViewTemplate() {
  // Create template JSON with itemTemplate (parser-specific feature)
  final templateJson = {
    'type': 'listView',
    'scrollDirection': 'horizontal',
    'shrinkWrap': true,
    'separator': PhlutsSizedBox(width: 8).toJson(),
    'padding': PhlutsEdgeInsets.only(left: 16).toJson(),
    'itemTemplate': PhlutsGestureDetector(
      onTap: PhlutsSetValueAction(
        values: [
          {'key': 'movie_id', 'value': '{{id}}'},
        ],
        action: PhlutsNavigator.pushPhluts('detail_screen'),
      ),
      child: PhlutsClipRRect(
        borderRadius: PhlutsBorderRadius.all(6),
        child: PhlutsImage(
          imageType: PhlutsImageType.network,
          src: '${AppApi.imageBaseUrl}/{{poster_path}}',
          width: 108,
          height: 164,
        ),
      ),
    ).toJson(),
  };

  // Create a PhlutsWidget with the JSON data
  return PhlutsWidget(jsonData: templateJson);
}
