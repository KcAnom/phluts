// Regression suite for the 2026-08-04 audit. Each case began as a repro that
// asserted the defect; the ones whose fix has landed now assert the corrected
// behavior instead. Cases still asserting a defect mark work not yet done —
// see tasks/audit-2026-08-04.md.
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:phluts/phluts.dart';
import 'package:phluts/src/parsers/actions/phluts_get_form_value/phluts_get_form_value_parser.dart';
import 'package:phluts/src/parsers/widgets/phluts_text/phluts_text_parser.dart';
import 'package:phluts/src/utils/expression_resolver.dart';
import 'package:phluts/src/utils/variable_resolver.dart';

/// A custom parser that claims an already-registered built-in type.
class MyTextParser extends PhlutsParser<Map<String, dynamic>> {
  const MyTextParser();
  @override
  String get type => 'text';
  @override
  Map<String, dynamic> getModel(Map<String, dynamic> json) => json;
  @override
  Widget parse(BuildContext context, Map<String, dynamic> model) =>
      const Text('CUSTOM-PARSER-RAN');
}

/// Dio adapter that records the outgoing request and replies with a canned code.
class RecordingAdapter implements HttpClientAdapter {
  RecordingAdapter(this.statusCode);
  final int statusCode;
  RequestOptions? seen;
  Object? seenBody;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    seen = options;
    if (requestStream != null) {
      final chunks = await requestStream.toList();
      seenBody = utf8.decode(chunks.expand<int>((e) => e).toList());
    }
    return ResponseBody.fromString('{}', statusCode);
  }

  @override
  void close({bool force = false}) {}
}

Future<BuildContext> pumpCtx(WidgetTester tester) async {
  late BuildContext ctx;
  await tester.pumpWidget(
    MaterialApp(
      home: Builder(
        builder: (c) {
          ctx = c;
          return const SizedBox();
        },
      ),
    ),
  );
  return ctx;
}

void main() {
  setUp(() async {
    await Phluts.initialize();
  });

  test('F1: custom parser for an existing type is silently dropped', () {
    final ok = PhlutsRegistry.instance.register(const MyTextParser());
    // ignore: avoid_print
    print('register() returned: $ok');
    // ignore: avoid_print
    print(
      'getParser("text") is now: '
      '${PhlutsRegistry.instance.getParser('text').runtimeType}',
    );
    expect(ok, isFalse);
    expect(
      PhlutsRegistry.instance.getParser('text'),
      isNot(isA<MyTextParser>()),
    );
  });

  test('F2: resolveVariablesInJson stringifies every value', () {
    PhlutsRegistry.instance.setValue('n', 2);
    PhlutsRegistry.instance.setValue('flag', true);
    final out = resolveVariablesInJson({
      'type': 'text',
      'data': 'hi',
      'maxLines': '{{n}}',
      'softWrap': '{{flag}}',
    }, PhlutsRegistry.instance);
    // ignore: avoid_print
    print('resolved: $out');
    expect(out['maxLines'], '2'); // String, not int
    expect(out['softWrap'], 'true'); // String, not bool
  });

  testWidgets('F2b: templated int/bool field kills the whole widget', (
    tester,
  ) async {
    final ctx = await pumpCtx(tester);
    PhlutsRegistry.instance.setValue('n', 2);
    Object? caught;
    try {
      const PhlutsTextParser().getModel(
        resolveVariablesInJson({
              'type': 'text',
              'data': 'hi',
              'maxLines': '{{n}}',
            }, PhlutsRegistry.instance)
            as Map<String, dynamic>,
      );
    } catch (e) {
      caught = e;
    }
    // ignore: avoid_print
    print('getModel threw: $caught');
    expect(caught, isNotNull);

    // And through the public entry point the widget just disappears:
    await Phluts.initialize(showErrorWidgets: false);
    final w = Phluts.fromJson({
      'type': 'text',
      'data': 'hi',
      'maxLines': '{{n}}',
    }, ctx);
    // ignore: avoid_print
    print('Phluts.fromJson returned: $w');
    expect(w, isNull);
  });

  test('F3: setValue(key, null) deletes the key instead of storing null', () {
    PhlutsRegistry.instance.setValue('k', 'old');
    PhlutsRegistry.instance.setValue('k', null);
    final resolved = resolveVariablesInJson(
      'value=[{{k}}]',
      PhlutsRegistry.instance,
    );
    // ignore: avoid_print
    print('after setValue(k,null) -> $resolved');
    expect(resolved, 'value=[{{k}}]'); // placeholder leaks to the UI
  });

  test('F4: ExpressionResolver mis-routes quoted comparisons', () {
    final r = ExpressionResolver.evaluate("'admin' == 'admin'");
    // ignore: avoid_print
    print("evaluate(\"'admin' == 'admin'\") = ${r.runtimeType} -> $r");
    expect(r, isNot(true));
  });

  testWidgets('F4b: conditional throws when expression is not a bool', (
    tester,
  ) async {
    final ctx = await pumpCtx(tester);
    Object? caught;
    try {
      const PhlutsConditionalParser().parse(
        ctx,
        PhlutsConditional.fromJson({
          'type': 'conditional',
          'condition': "'admin' == 'admin'",
          'ifTrue': {'type': 'text', 'data': 'yes'},
          'ifFalse': {'type': 'text', 'data': 'no'},
        }),
      );
    } catch (e) {
      caught = e;
    }
    // ignore: avoid_print
    print('conditional parse threw: $caught');
    expect(caught, isNotNull);

    // unset variable does the same
    Object? caught2;
    try {
      const PhlutsConditionalParser().parse(
        ctx,
        PhlutsConditional.fromJson({
          'type': 'conditional',
          'condition': '{{neverSet}}',
          'ifTrue': {'type': 'text', 'data': 'yes'},
        }),
      );
    } catch (e) {
      caught2 = e;
    }
    // ignore: avoid_print
    print('conditional(unset var) threw: $caught2');
    expect(caught2, isNotNull);
  });

  testWidgets('F5: networkRequest with no matching result completes quietly', (
    tester,
  ) async {
    final adapter = RecordingAdapter(500);
    final dio = Dio()..httpClientAdapter = adapter;
    await Phluts.initialize(dio: dio);
    final ctx = await pumpCtx(tester);

    Object? caught;
    await tester.runAsync(() async {
      final r = Phluts.onCallFromJson({
        'actionType': 'networkRequest',
        'url': 'https://example.com/x',
        'method': 'get',
        // Adapter answers 500; the only declared result is for 200, so no
        // result matches. That is an ordinary outcome, not an error.
        'results': [
          {
            'statusCode': 200,
            'action': {'actionType': 'none'},
          },
        ],
      }, ctx);
      try {
        await r;
      } catch (e) {
        caught = e;
      }
    });
    expect(
      caught,
      isNull,
      reason: 'an unmatched status escaped the framework try/catch',
    );
  });

  testWidgets('F5b: networkRequest with results omitted does not throw', (
    tester,
  ) async {
    // `results` defaults to const [], so the happy path — a 200 with no
    // declared follow-up — went through the same firstWhere.
    final adapter = RecordingAdapter(200);
    final dio = Dio()..httpClientAdapter = adapter;
    await Phluts.initialize(dio: dio);
    final ctx = await pumpCtx(tester);

    Object? caught;
    await tester.runAsync(() async {
      try {
        await Phluts.onCallFromJson({
          'actionType': 'networkRequest',
          'url': 'https://example.com/x',
          'method': 'get',
        }, ctx);
      } catch (e) {
        caught = e;
      }
    });
    expect(caught, isNull);
  });

  testWidgets('F6: a POST body that is not a Map is sent unchanged', (
    tester,
  ) async {
    final adapter = RecordingAdapter(200);
    final dio = Dio()..httpClientAdapter = adapter;
    await Phluts.initialize(dio: dio);
    final ctx = await pumpCtx(tester);

    await tester.runAsync(() async {
      await PhlutsNetworkService.request(
        ctx,
        const PhlutsNetworkRequest(
          url: 'https://example.com/x',
          method: Method.post,
          contentType: 'application/json',
          body: [1, 2, 3],
        ),
      );
    });
    expect(adapter.seenBody, '[1,2,3]');
  });

  testWidgets('F7: request() preserves headers configured on the caller Dio', (
    tester,
  ) async {
    final adapter = RecordingAdapter(200);
    final dio = Dio(BaseOptions(headers: {'Authorization': 'Bearer secret'}))
      ..httpClientAdapter = adapter;
    await Phluts.initialize(dio: dio);
    final ctx = await pumpCtx(tester);

    await tester.runAsync(() async {
      await PhlutsNetworkService.request(
        ctx,
        const PhlutsNetworkRequest(
          url: 'https://example.com/x',
          method: Method.get,
        ),
      );
    });
    expect(
      adapter.seen?.headers['Authorization'],
      contains('Bearer secret'),
      reason: 'the caller\'s auth header was erased from the request',
    );
    expect(
      dio.options.headers['Authorization'],
      'Bearer secret',
      reason: 'the caller\'s shared BaseOptions was mutated',
    );
  });

  testWidgets('F7b: per-request headers apply without erasing the defaults', (
    tester,
  ) async {
    final adapter = RecordingAdapter(200);
    final dio = Dio(BaseOptions(headers: {'Authorization': 'Bearer secret'}))
      ..httpClientAdapter = adapter;
    await Phluts.initialize(dio: dio);
    final ctx = await pumpCtx(tester);

    await tester.runAsync(() async {
      await PhlutsNetworkService.request(
        ctx,
        const PhlutsNetworkRequest(
          url: 'https://example.com/x',
          method: Method.get,
          headers: {'X-Trace': 'abc'},
        ),
      );
    });
    // Dio merges Options over BaseOptions: both must survive.
    expect(adapter.seen?.headers['X-Trace'], contains('abc'));
    expect(adapter.seen?.headers['Authorization'], contains('Bearer secret'));
  });

  testWidgets('F9: getFormValue on a missing field returns the string "null"', (
    tester,
  ) async {
    late BuildContext inner;
    await tester.pumpWidget(
      MaterialApp(
        home: PhlutsFormScope(
          formData: const {},
          formKey: GlobalKey<FormState>(),
          child: Builder(
            builder: (c) {
              inner = c;
              return const SizedBox();
            },
          ),
        ),
      ),
    );
    final v = const PhlutsGetFormValueParser().onCall(
      inner,
      PhlutsGetFormValue.fromJson({
        'actionType': 'getFormValue',
        'id': 'email',
      }),
    );
    // ignore: avoid_print
    print('getFormValue("email") on empty form = ${v.runtimeType} -> "$v"');
    expect(v, 'null');
  });

  testWidgets('F10: nested tree expands a variable value as a template', (
    tester,
  ) async {
    await Phluts.initialize();
    PhlutsRegistry.instance.setValue('a', '{{b}}');
    PhlutsRegistry.instance.setValue('b', 'SECRET');
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (c) =>
              Phluts.fromJson({
                'type': 'container',
                'child': {'type': 'text', 'data': '{{a}}'},
              }, c) ??
              const SizedBox(),
        ),
      ),
    );
    final text = tester.widget<Text>(find.byType(Text));
    // ignore: avoid_print
    print('rendered text = "${text.textSpan?.toPlainText()}"');
    expect(text.textSpan?.toPlainText(), 'SECRET');
  });

  testWidgets('F11: a nested setValue renders the value it just wrote', (
    tester,
  ) async {
    await Phluts.initialize();
    // A value left over from an earlier screen.
    PhlutsRegistry.instance.setValue('x', 'STALE');

    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (c) =>
              Phluts.fromJson({
                'type': 'container',
                'child': {
                  'type': 'setValue',
                  'values': [
                    {'key': 'x', 'value': 'FRESH'},
                  ],
                  'child': {'type': 'text', 'data': '{{x}}'},
                },
              }, c) ??
              const SizedBox(),
        ),
      ),
    );
    final text = tester.widget<Text>(find.byType(Text));
    expect(PhlutsRegistry.instance.getValue('x'), 'FRESH');
    expect(
      text.textSpan?.toPlainText(),
      'FRESH',
      reason: 'the subtree was resolved before initState wrote the new value',
    );
  });

  testWidgets('F11b: a root-level setValue still renders correctly', (
    tester,
  ) async {
    // The case that already worked. Pinned so the descent guard cannot fix
    // nesting by breaking the root.
    await Phluts.initialize();
    PhlutsRegistry.instance.setValue('x', 'STALE');

    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (c) =>
              Phluts.fromJson({
                'type': 'setValue',
                'values': [
                  {'key': 'x', 'value': 'FRESH'},
                ],
                'child': {'type': 'text', 'data': '{{x}}'},
              }, c) ??
              const SizedBox(),
        ),
      ),
    );
    final text = tester.widget<Text>(find.byType(Text));
    expect(text.textSpan?.toPlainText(), 'FRESH');
  });

  test('F8: variable values are re-expanded on the next resolution pass', () {
    PhlutsRegistry.instance.setValue('a', '{{b}}');
    PhlutsRegistry.instance.setValue('b', 'SECRET');
    final once = resolveVariablesInJson('{{a}}', PhlutsRegistry.instance);
    final twice = resolveVariablesInJson(once, PhlutsRegistry.instance);
    // ignore: avoid_print
    print('pass1=$once  pass2=$twice');
    expect(once, '{{b}}');
    expect(twice, 'SECRET');
  });
}
