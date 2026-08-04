import 'package:flutter/services.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsTextCapitalizationParser on PhlutsTextCapitalization {
  TextCapitalization get parse {
    switch (this) {
      case PhlutsTextCapitalization.none:
        return TextCapitalization.none;
      case PhlutsTextCapitalization.characters:
        return TextCapitalization.characters;
      case PhlutsTextCapitalization.words:
        return TextCapitalization.words;
      case PhlutsTextCapitalization.sentences:
        return TextCapitalization.sentences;
    }
  }
}
