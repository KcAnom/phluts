# Phluts Web View

[![pub package](https://img.shields.io/pub/v/phluts_webview.svg?label=phluts_webview&color=blue)](https://pub.dev/packages/phluts_webview)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A WebView support package for [Phluts](https://pub.dev/packages/phluts).

## Usage

1. Add `phluts_webview` as a dependency in your pubspec.yaml file.

Install the plugin by running the following command from the project root:

```bash
flutter pub add phluts_webview
```

or add it manually in your `pubspec.yaml` file:

```yaml
  dependencies:
    phluts_webview:
```

2. Add `PhlutsWebViewParser` in Phluts initialize.

```dart
void main() async {
  await Phluts.initialize(
    parsers: const [
      PhlutsWebViewParser(),
    ],
  );

  runApp(const MyApp());
}
```

3. Add Phluts WebView widget in your JSONs.

```JSON
{
  "type": "webView",
  "url": "https://github.com/PhlutsDev/phluts"
}
```