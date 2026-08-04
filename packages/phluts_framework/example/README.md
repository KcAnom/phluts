## Example

1. Import `phluts_framework.dart` at the top of your parser file.

```dart
 import 'package:phluts_framework/phluts_framework.dart';
```

2. Initialize your custom parser for a widget or an action and extend it from `PhlutsParser` or `PhlutsActionParser` like this.

    ```dart
        // define `MyCustomWidget`
    
        @freezed
        class MyCustomWidget with _$MyCustomWidget { ... }
    ```

   a. Let's say we are initializing a widget parser.

    ```dart
    class PhlutsWidgetPraser extends Parser<MyCustomWidget> { 
        ... 
    }
    ```

   b. Let's say we are initializing an action parser.

    ```dart
    class PhlutsActionPraser  extends PhlutsActionParser<dynamic> {
        ...
    }
    ```

3. Now implement the required methods in your custom parser.

   a. Let's say we are building a widget parser.

    ```dart
    class PhlutsWidgetParser  extends PhlutsParser<MyCustomWidget> {
        @override
        MyCustomWidget getModel(Map<String, dynamic> json) {
            // TODO: implement getModel
            throw UnimplementedError();
        }

        @override
        Widget parse(BuildContext context, MyCustomWidget model) {
            // TODO: implement parse
            throw UnimplementedError();
        }

        @override
        // TODO: implement type
        String get type => throw UnimplementedError();

    }

    ```

   b. Let's say we are building an action parser.

    ```dart
    class PhlutsActionPraser  extends PhlutsActionParser<dynamic> {
        @override
        // TODO: implement actionType
        String get actionType => throw UnimplementedError();

        @override
        getModel(Map<String, dynamic> json) {
            // TODO: implement getModel
            throw UnimplementedError();
        }

        @override
        FutureOr onCall(BuildContext context, model) {
            // TODO: implement onCall
            throw UnimplementedError();
        }
    }
    ```
