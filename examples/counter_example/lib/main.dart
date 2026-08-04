import 'package:counter_example/counter/actions/counter_action_parser.dart';
import 'package:counter_example/counter/widgets/counter_screen_parser.dart';
import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

void main() async {
  await Phluts.initialize(
    parsers: [
      CounterScreenParser(),
    ],
    actionParsers: [
      CounterActionParser(),
    ],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phluts Counter Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Phluts.fromJson(json, context) ?? SizedBox(),
    );
  }
}

const Map<String, dynamic> json = {
  "type": "counterScreen",
  "title": "Phluts Counter Example",
  "description": "You have pushed the button this many times:",
  "onIncrement": {
    "actionType": "counterAction",
    "counterActionType": "increment",
    "delta": 1,
  },
  "onDecrement": {
    "actionType": "counterAction",
    "counterActionType": "decrement",
    "delta": 2,
  }
};
