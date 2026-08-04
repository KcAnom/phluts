import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'dynamic_view')
PhlutsWidget dynamicViewExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'User Profile')),
    body: PhlutsDynamicView(
      request: PhlutsNetworkRequest(
        url: 'https://dummyjson.com/users/1',
        method: Method.get,
      ),
      loaderWidget: PhlutsCenter(
        child: PhlutsColumn(
          children: [
            PhlutsText(data: 'Loading...'),
            PhlutsCircularProgressIndicator(),
          ],
        ),
      ),
      errorWidget: PhlutsCenter(
        child: PhlutsText(data: 'Error fetching user profile'),
      ),
      template: PhlutsColumn(
        children: [
          PhlutsContainer(
            padding: PhlutsEdgeInsets.all(16),
            child: PhlutsColumn(
              crossAxisAlignment: PhlutsCrossAxisAlignment.start,
              children: [
                PhlutsImage(src: '{{image}}', width: 100, height: 100),
                PhlutsText(
                  data: '{{firstName}} {{lastName}}',
                  style: PhlutsTextStyle(
                    fontSize: 24,
                    fontWeight: PhlutsFontWeight.w700,
                  ),
                ),
                PhlutsSizedBox(height: 8),
                PhlutsText(
                  data: 'Email: {{email}}',
                  style: PhlutsTextStyle(fontSize: 16, color: '#666666'),
                ),
                PhlutsText(
                  data: 'Phone: {{phone}}',
                  style: PhlutsTextStyle(fontSize: 16, color: '#666666'),
                ),
                PhlutsText(
                  data: 'Age: {{age}}',
                  style: PhlutsTextStyle(fontSize: 16, color: '#666666'),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
