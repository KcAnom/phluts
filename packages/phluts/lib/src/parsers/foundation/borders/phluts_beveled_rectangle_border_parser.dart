import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

import 'phluts_border_side_parser.dart';

extension PhlutsBeveledRectangleBorderParser on PhlutsBeveledRectangleBorder {
  BeveledRectangleBorder parse(BuildContext context) {
    return BeveledRectangleBorder(
      side: side?.parse(context) ?? BorderSide.none,
    );
  }
}
