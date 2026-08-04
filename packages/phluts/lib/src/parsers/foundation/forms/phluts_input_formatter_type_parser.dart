import 'package:phluts/src/utils/input_formatters.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsInputFormatterTypeCoreParser on PhlutsInputFormatterType {
  InputFormatterType get parse {
    switch (this) {
      case PhlutsInputFormatterType.allow:
        return InputFormatterType.allow;
      case PhlutsInputFormatterType.deny:
        return InputFormatterType.deny;
      case PhlutsInputFormatterType.mask:
        return InputFormatterType.mask;
    }
  }
}
