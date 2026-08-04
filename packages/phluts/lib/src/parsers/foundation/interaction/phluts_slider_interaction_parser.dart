import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsSliderInteractionParser on PhlutsSliderInteraction {
  SliderInteraction get parse {
    switch (this) {
      case PhlutsSliderInteraction.tapAndSlide:
        return SliderInteraction.tapAndSlide;
      case PhlutsSliderInteraction.tapOnly:
        return SliderInteraction.tapOnly;
      case PhlutsSliderInteraction.slideOnly:
        return SliderInteraction.slideOnly;
      case PhlutsSliderInteraction.slideThumb:
        return SliderInteraction.slideThumb;
    }
  }
}
