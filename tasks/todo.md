# Path to completion — vnodes Dart work + phluts audit

Source of truth: `tasks/audit-2026-08-04.md` (46 findings, all with executed repros).
This file is the execution plan. Lessons that govern it: `tasks/lessons.md` (L1–L5).

## State verified at plan time (2026-08-04, re-measured, not carried over)

- vnodes `npm test` → **32/32 pass**.
- phluts `flutter test test/audit_repro_test.dart` → **13/13 pass**. Each test asserts the
  *buggy* behavior, so green means every bug still reproduces.
- vnodes HEAD `353ffb2` holds the committed Dart parser work → **D1, D3 live here**.
- vnodes working tree holds uncommitted Dart import resolution
  (`dartPackageRoots`, `resolveDartImport`, `export`/`part` capture, 1 test) → **D2, D4, D5 live here**.
- Line anchors re-read from disk and confirmed: `parser.js:219` (D1), `:118-133` (D3),
  `:205-225` (D2), `:213` (D4), `indexer.js:352` (D5), `indexer.js:443` (I1).

## Two constraints the audit report does not state

**C1 — A parser fix is invisible without a full rebuild.**
`indexer.js:443` skips a file when its content hash is unchanged, *before* it is parsed.
There is no parser-version column in the manifest or the `files` table. So after landing
D1–D5, a plain `vnodes index` or any daemon save-triggered run re-parses **nothing** and the
fix appears to have failed. Only `vnodes reindex` (`bin/vnodes.js:34`, unlinks
`index.db`/`-wal`/`-shm`) rebuilds. Every D-series measurement must come from `reindex`.

**C2 — `audit_repro_test.dart` inverts as the fixes land.**
It pins buggy behavior (`expect(ok, isFalse)`, `expect(rendered, 'STALE')`,
`expect(adapter.seenBody, '{}')`). Fixing a bug turns its test red. That file is the
regression suite with its polarity reversed — flip each test in the same commit as its fix.
Never delete a case; a deleted repro is an unverified fix.

---

## Phase 1 — vnodes D1–D5 (blocks the held commit)

Land as **one** patch set, one `reindex`, one before/after table. The report's headline
(~73 nodes missing, 3 fabricated edges, 12 phantom nodes, 6 files with zero inbound) is a
*combined* figure — verifying the fixes one at a time will not reconcile against it (L4).

- [ ] D2 first — string-literal state in the Dart branch (`parser.js:199`, `:205`).
      Lands before D1 so the broadened constructor regex is never let loose on template text.
- [ ] D1 — constructor name class `[A-Za-z_$][\w$]*` + `external\s+` (`parser.js:219`).
      The `c[1] === dartClass` guard is what disambiguates; `[A-Z]` was never load-bearing.
- [ ] D3 — operator-overload pattern before the `const` entry (`parser.js:133`).
- [ ] D4 — capture `if (dart.library.*)` alternatives (`parser.js`, dart branch, no early return).
      Anchor on `dart.library.` — the loose form also eats collection-if map literals.
- [ ] D5 — `depth(d) => d === '' ? 0 : d.split('/').length` (`indexer.js:352`).
- [ ] Tests: `_Card` constructor, raw-string template, conditional import, operator `==`,
      root-vs-nested duplicate package name. Each fails before its patch.

**Gate (L1 — graph invariants, not insertion counts).** After `vnodes reindex --project
/Users/kcdacre8tor/phluts`, assert against the DB: 2-cycle count, self-edge count,
phantom-`dst` count, zero-inbound file count, and total nodes/edges. Compare to the
pre-patch rebuild. Numbers reported must all come from the *final* run (L4).

**Gate (L2 — exhaustive over a bounded slice, not a sample).** D1: every constructor line
across all 871 `.dart` files by grep, counted against DB `kind=constructor` rows. D4: all 4
conditional directives → 8 specs → 6 files, each checked present. Not "I spot-checked six".

- [ ] Commit the held Dart work + D1–D5 together. Release the hold.

## Phase 2 — vnodes I1 (HIGH, pre-existing, corrupts every other answer)

`get_impact_graph` returns `found:true, dependents_total:0` when a dependent exists; the
daemon runs the broken path on every save, and the loss is permanent and silent.

- [ ] Persist raw import specifiers at parse time; re-run the whole (pure, cheap) resolve
      pass over all files every index. This makes incremental provably equal to a full rebuild
      and is the only variant that also fixes C1's edge half.
- [ ] Regression test: incremental edge set == fresh full index after add / rename / delete.
- [ ] Re-run the Phase 1 invariant gate — I1's fix changes edge counts, so Phase 1's headline
      numbers get restated with the diff called out (L4).

Deferred, tracked, not silently dropped: I2 (phantom `dst`, 1 row in 2489), I3 (C/C++ and
Ruby have no resolver branch — every Ruby repo indexes with an empty graph), I4 (manifest
written, never read), M1, M2.

## Phase 3 — phluts runtime HIGHs (the shipped product)

Fix + invert the matching repro test in the same commit (C2).

- [ ] F5 → finding 1 — `networkRequest` `firstWhere` with no `orElse` escapes the framework
      try/catch on the **happy path** when `results` is omitted. Also make
      `onCallFromJson` `async`/`await` so its try/catch actually covers async failures.
- [ ] F7 → finding 2 — `PhlutsNetworkService` assigns onto the caller's shared `Dio`
      `BaseOptions`, erasing auth headers app-wide. Per-call `Options` instead.
- [ ] F11 → finding 3 — nested `setValue` renders stale values; the documented nesting shape
      in `docs/widgets/set_value.mdx` is the broken one. Stop descent at any `setValue` node.
- [ ] F6 → finding 6 — non-`Map` POST bodies replaced with `{}`; `if (body is! Map) return body;`
- [ ] Full suite green: `packages/phluts` and `phluts_playground`.

## Phase 4 — phluts CLI + VS Code HIGHs

- [ ] Finding 13 — duplicate `screenName` silently overwrites output, reports `failed: 0`,
      garbage propagates to `deploy`. Hoist uniqueness to build scope.
- [ ] Finding 14 — `_extractJson` takes the first JSON object on stdout; a stray `print`
      becomes the deployed screen. Sentinels, and fail loudly when absent.
- [ ] Finding 19 — build-fallback preview is 100% non-functional with shipped defaults
      (`outputDirCandidates` omits `screens/`). Fix the stale test fixture too — that fixture
      is why nothing caught it.

## Phase 5 — CI, then the rest

- [ ] Finding 26 — one line: CI push trigger says `master`, default branch is `main`.
      Nothing runs on merge to main today. Do this early; it is what makes the gates real.
- [ ] Finding 27 — 189 files fail `dart format`. **Decision needed:** this is a large
      mechanical diff. Landing it first keeps every later diff clean; landing it last avoids
      churn during the fixes. Recommend: first, standalone commit, then pin the Dart version.
- [ ] Finding 28 — CI never runs the library or example suites; both example tests fail today.
- [ ] Findings 29, 31 — one table-driven test (every `WidgetType` has a parser + every
      `docs/widgets/*.mdx` preview parses) catches both.
- [ ] Remaining MEDIUM/LOW per the audit's fix-first order.

---

## Review

**Done: Phase 5 format commit, Phase 1 (D1–D5), Phase 2 (I1).** All numbers below are from
the final run of each phase, after every change in that phase.

### phluts `chore/dart-format` — a9cc5ad
164 tracked files reformatted; format job pinned to Flutter 3.38.7 / Dart 3.10.7.
**Correction to audit finding 27:** the reported 189 is what `dart format` rewrites on a
warm tree, but 24 of those are gitignored build artifacts under
`phluts_playground/build/unit_test_assets/` and one is an untracked local test.
`validate-formatting.sh` gates on `git ls-files --modified`, so **164** is the number that
makes CI red. Per package: phluts 27, phluts_core 101, phluts_cli 6, phluts_webview 3,
phluts_playground 25, movie_app 2. Suites green after: phluts 16/16, playground 10/10.
Recorded as [L6](lessons.md).

### vnodes `fix/dart-parser-defects` — 19989c9 (D1–D5)
Held Dart import resolution released together with all five fixes, as one patch set with
one rebuild, since the audit's headline is a combined figure.

| | before | after |
|---|---|---|
| nodes | 5714 | 5775 (+61 D1, +12 D3, −12 D2) |
| edges | 2497 | 2500 (+6 D4, −3 D2) |
| constructors | 607 | 674 (67 private/`$`, 0 before) |
| operators | 0 | 12 |
| dart files, no inbound edge | 105 | 99 |
| unbacked cross-package edges | 1 | 0 |
| 2-cycles / self-edges | 9 / 0 | 9 / 0 |

L1 gate: no new cycles, no self-edges. L2 gate (exhaustive, not sampled): all 674
constructor nodes and all 12 operator nodes re-derived from disk independently of the
parser — 0 failures; an independent grep finds exactly 12 operator declarations on disk;
0 nodes fall inside an independently-computed multi-line-string range. All 8 conditional
clauses across 4 directives → 6 distinct files, each confirmed with an inbound edge.

### vnodes — 35dc65a (I1)
Raw specifiers persisted in a new `imports` table; all edges re-derived per repo each run.
`schema_version` in `meta` (now 2) forces one rebuild when stored parse output stops being
reusable — which is also the only thing that lets a future parser change reach files whose
bytes did not change.

Symptom before/after, same fixture: `dependents_total: 0` → `1`, matching a cold rebuild.
On phluts the migration run reproduces 5775 nodes / 2500 edges exactly, so **Phase 1's
numbers above stand unchanged**; a warm run costs 297ms and reproduces every invariant.

39 tests pass. Each of the 6 new cases was confirmed failing against unpatched source
([L7](lessons.md)). Added the first multi-repo workspace test — that path had no coverage
and this change touches it.

### phluts `fix/phluts-high-severity` — 84aa3bf, 6182da7, 3d80a87 (Phases 3–4)
All 7 phluts HIGHs. (The handoff said 8; the fix-first table's 8th row is vnodes I1.)

**84aa3bf — 4 runtime HIGHs.** `networkRequest`'s unhandled `StateError` (both halves:
`firstOrNull`-style lookup *and* `onCallFromJson` now `async`/awaited so async action
failures land in its catch); shared-`Dio` `BaseOptions` mutation → per-call `Options`;
nested `setValue` staleness → descent stops at any `setValue` node; non-Map POST bodies
passed through. Repro cases inverted per C2, never deleted, plus 3 boundary cases
(results omitted, header merging, root-level `setValue` still correct). 19 tests pass.

**6182da7 — 2 CLI HIGHs.** Verified end-to-end against a throwaway in-tree fixture.
Before: `processed: 3, failed: 0`, "Build completed successfully!", one `dup_screen.json`
on disk from two sources; `noisy_screen.json` containing a stray `print`'s diagnostic.
After: duplicate fails naming both sources and the build throws; payload is
sentinel-delimited. **No regression guard** — `phluts_cli` has no test harness at all
(finding 33), so the fixture was throwaway. Standing up CLI tests remains open.

**3d80a87 — VS Code HIGH.** Old defaults resolved `undefined` against the layout the CLI
actually writes; new defaults resolve screen and theme. The stale test fixture was the
cause — it built at the wrong layout *and* passed its own candidate list, so it agreed
with itself. Default de-duplicated into `DEFAULT_OUTPUT_DIR_CANDIDATES` with a drift guard
against `package.json`. `npm test` still cannot execute (finding 25), so verified by
running the compiled resolver directly.

### Process note
The CLI verification went in circles for ~6 steps: I tried to build the fixture by copying
`examples/movie_app` into scratchpad, which cannot work — audit finding 32 says intra-repo
deps resolve only through gitignored `pubspec_overrides.yaml` with repo-relative paths, and
I had already read it. The fixture has to live in-tree at `examples/<name>/` depth. Cost:
six wasted steps and one temp file left in `packages/phluts_cli/bin/` before cleanup.
Recorded as [L8](lessons.md).

### Not done, deliberately
- **Phases 3 and 4** — the 8 phluts HIGHs. Untouched; `audit_repro_test.dart` still pins
  the buggy behavior and is still green, so every one still reproduces.
- **vnodes I2, I3, I4, M1, M2** — tracked in the audit, none started. `phantomDst` is still
  1 (the 640 KB size-skipped file), unchanged by this work.
- **Finding 26** (CI push trigger says `master`, default branch is `main`) — one line, not
  in the approved scope. Until it lands, none of these gates run on a merge to main.
- Three vnodes files (`.mcp.json`, `.gemini/settings.json`, `.claude/skills/vnodes/SKILL.md`)
  hold uncommitted `/Users/kc` → `/Users/kcdacre8tor` path corrections. Left uncommitted:
  machine-specific absolute paths in a repo are a separate call.
