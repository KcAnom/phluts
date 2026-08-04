import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

extension PhlutsActionParserExtension on PhlutsAction? {
  FutureOr<dynamic> parse(BuildContext context) {
    if (this == null) {
      return null;
    }

    return Phluts.onCallFromJson(this!.toJson(), context);
  }
}
