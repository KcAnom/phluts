import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'snackbar')
PhlutsWidget snackbarExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'SnackBar')),
    body: PhlutsCenter(
      child: PhlutsElevatedButton(
        onPressed: PhlutsSnackBar(
          content: PhlutsText(data: 'This is a Snackbar').toJson(),
          behavior: PhlutsSnackBarBehavior.floating,
        ),
        child: PhlutsText(data: 'Show SnackBar'),
      ),
    ),
  );
}
