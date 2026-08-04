# Error Playbooks

## `phluts: command not found`

- Install CLI.
- Restart shell.
- Verify with `phluts --version`.

## `phluts build` finds no files

- Confirm `phluts/` directory exists.
- Confirm `.dart` files exist under `phluts/`.
- Confirm at least one function uses `@PhlutsScreen(...)`.

## Unknown widget/action type at runtime

- Confirm type spelling.
- Confirm custom parser is registered in `Phluts.initialize`.
- Confirm generated json contains expected `type`/`actionType`.
