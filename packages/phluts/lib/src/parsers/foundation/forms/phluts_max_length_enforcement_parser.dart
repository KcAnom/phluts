import 'package:flutter/services.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsMaxLengthEnforcementParser on PhlutsMaxLengthEnforcement {
  MaxLengthEnforcement get parse {
    switch (this) {
      case PhlutsMaxLengthEnforcement.none:
        return MaxLengthEnforcement.none;
      case PhlutsMaxLengthEnforcement.enforced:
        return MaxLengthEnforcement.enforced;
    }
  }
}
