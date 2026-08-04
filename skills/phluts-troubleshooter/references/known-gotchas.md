# Known Gotchas

- Missing `lib/default_phluts_options.dart` after partial init.
- Missing `@PhlutsScreen` annotation in otherwise valid Dart file.
- Parser class implemented but not passed into `Phluts.initialize`.
- Cache strategy hides recent cloud updates during testing.
- Generated `phluts/.build` expected by workflow but not created yet.
