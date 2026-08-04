# Phluts Framework

[![pub package](https://img.shields.io/pub/v/phluts_framework.svg?label=phluts_framework&color=blue)](https://pub.dev/packages/phluts_framework)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

The Phluts Framework package contains the framework files for [Phluts](https://github.com/PhlutsDev/phluts), such as PhlutsParser and PhlutsActionParser. These classes provide a simple way to create custom parsers for widgets and actions in Phluts. This can be useful for extending the functionality of Phluts or for implementing custom widgets and actions.

Here are some examples of how the Phluts Framework package can be used:

- Create a custom parser for a new widget that is not supported by Phluts out of the box.
- Create a custom parser for a widget that has additional functionality, such as the ability to handle user input.
- Create a custom action parser to handle a new type of action, such as sending a message to a remote server.
- Create a custom action parser to handle an existing action in a different way, such as logging the action before it is executed.

## Installation 🚀

First, we need to add Phluts Framework to our pubspec.yaml file.

Install the plugin by running the following command from the project root:

```bash
flutter pub add phluts_framework
```

## Usage

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
    class PhlutsWidgetParser extends PhlutsParser<MyCustomWidget> { 
        ... 
    }
    ```

    b. Let's say we are initializing an action parser.

    ```dart
    class PhlutsActionParser  extends PhlutsActionParser<dynamic> {
        ...
    }
    ```

3. Now you can implement the required methods in your custom parser.

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
    class PhlutsActionParser  extends PhlutsActionParser<dynamic> {
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
