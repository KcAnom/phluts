# Parser Registration

## Widget Parser

```dart
await Phluts.initialize(
  options: defaultPhlutsOptions,
  parsers: const [
    MyWidgetParser(),
  ],
);
```

## Action Parser

```dart
await Phluts.initialize(
  options: defaultPhlutsOptions,
  actionParsers: const [
    MyActionParser(),
  ],
);
```

## Validation Rule

- Parser class name should appear in the same file that calls `Phluts.initialize`.
