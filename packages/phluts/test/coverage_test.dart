// Coverage guarantees that the type system cannot express on its own.
//
// Two whole classes of defect shipped because nothing checked these:
// WidgetType values with no parser behind them (they render null and log
// "not supported"), and documented JSON previews that do not actually
// render. Both are table-driven here, so a new enum value or a new docs page
// is covered the moment it is added rather than when someone happens to try
// it.
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:phluts/phluts.dart';

/// Every `export const <name>PreviewJson = {...};` block in an .mdx file.
///
/// The previews are JS object literals with quoted keys, which is JSON, so
/// they are extracted by brace balance rather than parsed as JavaScript.
Map<String, String> extractPreviewJson(String source) {
  final found = <String, String>{};
  final pattern = RegExp(r'export\s+const\s+(\w*PreviewJson)\s*=\s*');
  for (final m in pattern.allMatches(source)) {
    final start = source.indexOf('{', m.end);
    if (start == -1) continue;
    var depth = 0;
    var inString = false;
    var escape = false;
    for (var i = start; i < source.length; i++) {
      final c = source[i];
      if (escape) {
        escape = false;
        continue;
      }
      if (c == r'\' && inString) {
        escape = true;
        continue;
      }
      if (c == '"') {
        inString = !inString;
        continue;
      }
      if (inString) continue;
      if (c == '{') {
        depth++;
      } else if (c == '}') {
        depth--;
        if (depth == 0) {
          found[m.group(1)!] = source.substring(start, i + 1);
          break;
        }
      }
    }
  }
  return found;
}

/// Previews deliberately not asserted, and why. Kept explicit and narrow: a
/// silent skip is indistinguishable from a passing test.
const skippedPreviews = <String, String>{
  'dynamic_view.mdx':
      'the parser issues a live request while building, so this needs a '
      'server rather than a defect fixing',
  'network_widget.mdx':
      'same — networkWidget fetches at parse time; fromJson does return a '
      'FutureBuilder',
  'webview.mdx':
      'webView ships in the opt-in phluts_webview package and is absent from '
      'the default parser set by design (see webview.mdx itself)',
};

void main() {
  setUp(() async {
    // showErrorWidgets must be off. With it on — the default — and kDebugMode
    // true under the test runner, a preview that fails to parse comes back as
    // an error *widget* rather than null, so a non-null assertion would pass
    // on exactly the previews this test exists to catch.
    await Phluts.initialize(showErrorWidgets: false);
  });

  test('every WidgetType has a registered parser', () {
    final missing = WidgetType.values
        .where((t) => PhlutsRegistry.instance.getParser(t.name) == null)
        .map((t) => t.name)
        .toList();
    expect(
      missing,
      isEmpty,
      reason:
          'these render null and log "not supported" — give them a parser or '
          'remove the enum value',
    );
  });

  test('every ActionType has a registered action parser', () {
    final missing = ActionType.values
        .where((t) => PhlutsRegistry.instance.getActionParser(t.name) == null)
        .map((t) => t.name)
        .toList();
    expect(missing, isEmpty);
  });

  group('documented previews render', () {
    final docsDir = Directory('../../docs/widgets');
    final files =
        docsDir
            .listSync()
            .whereType<File>()
            .where((f) => f.path.endsWith('.mdx'))
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));

    test('the docs directory was actually found', () {
      expect(
        files,
        isNotEmpty,
        reason:
            'no .mdx files at ${docsDir.absolute.path} — a green run here '
            'would otherwise mean "nothing checked"',
      );
    });

    for (final file in files) {
      final name = file.uri.pathSegments.last;
      final previews = extractPreviewJson(file.readAsStringSync());

      final skipReason = skippedPreviews[name];

      for (final entry in previews.entries) {
        // The reason rides in the description so a skip is legible in the run
        // output rather than just a lower count.
        final label = skipReason == null
            ? '$name > ${entry.key}'
            : '$name > ${entry.key} — SKIPPED: $skipReason';

        testWidgets(label, skip: skipReason != null, (tester) async {
          final decoded = jsonDecode(entry.value) as Map<String, dynamic>;

          // Asserts the parser chain yields a widget, not that the fragment
          // renders standalone. Many previews are fragments that legitimately
          // need a particular ancestor (Expanded wants a Flex, InkWell wants
          // Material) or load network images, and failing them for that would
          // measure the harness rather than the docs.
          late BuildContext context;
          await tester.pumpWidget(
            MaterialApp(
              home: Builder(
                builder: (c) {
                  context = c;
                  return const SizedBox();
                },
              ),
            ),
          );

          final built = Phluts.fromJson(decoded, context);
          expect(
            built,
            isNotNull,
            reason:
                'this preview is published in docs/widgets/$name and does not '
                'parse — readers copy these verbatim',
          );
        });
      }
    }
  });
}
