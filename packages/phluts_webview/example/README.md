## Example

1. Add `phluts_webview` as a dependency in your pubspec.yaml file.

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