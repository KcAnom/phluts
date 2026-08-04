import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_webview/phluts_webview.dart';

@PhlutsScreen(screenName: 'web_view')
PhlutsWidget webViewExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'WebView')),
    body: PhlutsWebView(url: 'https://github.com/PhlutsDev/phluts'),
  );
}
