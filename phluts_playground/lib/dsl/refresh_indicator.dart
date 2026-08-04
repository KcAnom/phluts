import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'refresh_indicator')
PhlutsWidget refreshIndicatorExample() {
  return PhlutsScaffold(
    body: PhlutsRefreshIndicator(
      onRefresh: PhlutsNetworkRequest(
        url:
            'https://raw.githubusercontent.com/PhlutsDev/phluts/main/phluts_playground/assets/json/list_view_example.json',
        method: Method.get,
        contentType: 'application/json',
      ),
      child: PhlutsNetworkWidget(
        request: PhlutsNetworkRequest(
          url:
              'https://raw.githubusercontent.com/PhlutsDev/phluts/main/phluts_playground/assets/json/list_view_example.json',
          method: Method.get,
        ),
      ),
    ),
  );
}
