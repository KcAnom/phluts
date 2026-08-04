import 'package:flutter/cupertino.dart';
import 'package:phluts_logger/phluts_logger.dart';

class PhlutsFormScope extends InheritedWidget {
  const PhlutsFormScope({
    super.key,
    required super.child,
    required this.formData,
    required this.formKey,
  });

  final Map<String, dynamic> formData;
  final GlobalKey<FormState> formKey;

  static PhlutsFormScope? of(BuildContext context) {
    final PhlutsFormScope? result = context
        .dependOnInheritedWidgetOfExactType<PhlutsFormScope>();

    if (result != null) {
      return result;
    } else {
      Log.e(
        "PhlutsFormScope.of() called with a context that does not contain a PhlutsFormScope.",
      );
      return null;
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget.child != child;
  }
}
