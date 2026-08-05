# Lessons

Patterns extracted from corrections. Each entry: what went wrong, why it happened,
and the rule that prevents it recurring.

---

## L1 — Verify at the level the change operates on, not the level it was written at

**2026-08-04, vnodes Dart import resolution.** Added `part`/`part of` capture. Both
directives describe the *same* source↔generated-part relationship from opposite sides,
so emitting both created a 2-cycle for every generated file: 376 mutual edges, ~28% of
the graph. Unit tests passed, the edge count went up, and I called it done. The user
asked "are you sure" and only then did I check graph-level invariants.

**Why:** I verified at the level I was editing (does this line produce an edge?) instead
of the level the change operates on (is the resulting graph well-formed?).

**How to apply:** When a change alters a data structure, assert on properties of the
resulting structure, not just on individual insertions. For a graph: cycle count,
self-edges, dangling references, degree outliers. For a parser: symbol-frequency
distribution, not one hand-picked file. Run the invariant check *before* reporting done.

---

## L2 — "I spot-checked N and they looked right" is not verification

**Same change.** I sampled 6 of 2,669 edges, saw they matched the source, and reported
the edge set as verified. The defect was in a different 28% of the graph and a sample
that small could never have surfaced it.

**How to apply:** Verify by exhaustive comparison over a bounded slice, not by sampling
a large one. The check that actually worked here: extract every in-tree import spec from
one file with grep, count them, compare to that file's edge count in the DB — 18 vs 18.
That is a closed loop. "Six looked fine" is an anecdote. If a claim covers N items, the
evidence must cover N items or a provably representative property of them.

---

## L3 — Absolute paths in every command; `cd` leaks through compound commands

**Same session.** Ran `cd /Users/kcdacre8tor/vnodes && npm test; vnodes reindex; sqlite3 ...`.
The `cd` persisted through the rest of the chain, so the reindex measured the vnodes repo
(34 files, zero Dart) and I reported "0 cycles" as if it were the phluts result. The
number was meaningless and I nearly shipped it as evidence the fix worked.

**How to apply:** Never rely on ambient cwd for a measurement. Pass the target explicitly
(`vnodes reindex --project <abs>`, `sqlite3 <abs>/.vnodes/index.db`, `npm --prefix <abs> test`).
If output includes a file/record count, sanity-check that count against the expected repo
size before interpreting it — a 1320→34 drop is the tell.

---

## L4 — Report the number you measured, not the number you expected

**Same session.** Reported "112 → 2,669 edges" as the outcome. After the cycle fix the
real figure was 2,489. The first number was measured but became stale the moment the
defect was fixed, and it had already been stated as a result.

**How to apply:** Re-measure after the last change, not after the first passing one.
Any headline metric quoted to the user must come from a run that includes every commit
in the change set. If a number is restated later, diff it against the earlier claim and
say so explicitly.

---

## L6 — Measure with the same scope as whatever consumes the number

**2026-08-04, phluts format audit.** The audit reported "189 files fail `dart format`"
because that is what `dart format` printed. But the gate that consumes it,
`validate-formatting.sh`, tests `git ls-files --modified` — tracked files only. 24 of the
189 were gitignored build artifacts under `phluts_playground/build/`, and one was an
untracked local test. The number that actually makes CI red is **164**. The finding was
real either way, which is exactly why the wrong number would have survived.

**Why:** the measurement tool and the consuming gate had different ideas of what "a file
in this repo" means, and I only checked one of them.

**How to apply:** before quoting a count, name the consumer of that count and re-measure
through its filter. If a CI script decides, run what the CI script runs. The tell here was
cheap and I nearly skipped it: `dart format` said 189, `git diff --name-only` said 164 —
any disagreement between two counts of "the same" set has to be reconciled, not averaged
or rounded to the more impressive one. A discrepancy you cannot explain is a finding.

---

## L7 — A test that has never failed has proven nothing

**Same session, vnodes D1–D5 and I1.** Six new tests were written alongside their patches.
Rather than trusting that they covered the defects, each was run against the *unpatched*
source (`git stash push src/`, run, `git stash pop`). All six failed there and passed after
— including the D5 root-vs-nested pubspec case, where the tie was resolved by walk order
and it was genuinely unclear whether the fixture would land on the failing side.

**How to apply:** write the test, then revert the fix and watch it fail. This is one stash
and one test run. Without it, a test asserting the behavior you already have is
indistinguishable from a test asserting the behavior you fixed — and it is precisely the
tests written *from* the patch that tend to encode the patch's assumptions rather than the
requirement. State in the commit that the check was done.

---

## L8 — Apply the constraint you already read, and stop after the second failure

**2026-08-04, verifying the phluts_cli build fixes.** To exercise `BuildService` end to
end I copied `examples/movie_app` into a scratchpad directory. It could not possibly work:
audit finding 32 — which I had read earlier in the same session and summarized in the plan
— says intra-repo deps resolve *only* through gitignored `pubspec_overrides.yaml` holding
repo-relative paths. Copying the project out of the tree breaks every one of them.

Worse than the mistake was the response to it. Three obstacles came in sequence (missing
env vars, an auth gate, then broken overrides) and each time I patched forward instead of
stopping. Six steps, one temp harness left behind in `packages/phluts_cli/bin/`, and the
user had to interrupt to stop it. The correct fixture — in-tree at `examples/<name>/` so
the relative overrides resolve — then worked on the first try and proved both defects.

**Why:** I treated each failure as a local obstacle to route around rather than as evidence
that the approach was wrong. Reading a constraint is not the same as applying it; findings
gathered during research have to be consulted again when they become load-bearing.

**How to apply:** two consecutive failures in the *same* setup step means the approach is
wrong, not the increment — stop and re-plan rather than patching forward. Before building
any fixture, re-read what the report already says about how that project resolves its
dependencies. And when a scratch file is created inside the user's repo, delete it in the
same step that stops needing it, not "later".

---

## L5 — Escalate to independent review when the correction rate climbs

**Same session.** Three self-caught-late errors in one task. The user had to prompt the
audit rather than me proposing it.

**How to apply:** Two corrections on the same change is the signal to stop self-verifying
and get independent eyes — an adversarial reviewer prompted to *refute*, not confirm.
Self-review shares the blind spot that caused the defect; that is precisely why it missed it.
Propose this before the user has to ask.
