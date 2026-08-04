# CLI Workflow

## Core Commands

```bash
phluts login
phluts status
phluts init
phluts build --verbose
phluts deploy --verbose
```

## Fast Verification Loop

1. Run `phluts status` and confirm authenticated state.
2. Run `phluts build` and verify generated json files.
3. Run `phluts deploy` and verify uploaded screen count.

## Common Recovery Steps

- Login issues: `phluts logout && phluts login`
- No screens found: ensure `@PhlutsScreen` annotations exist under `phluts/`.
- Project mismatch: re-run `phluts init` in correct root.
