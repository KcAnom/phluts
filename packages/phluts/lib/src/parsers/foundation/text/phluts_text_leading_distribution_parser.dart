import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

extension PhlutsTextLeadingDistributionParser on PhlutsTextLeadingDistribution {
  TextLeadingDistribution get parse {
    switch (this) {
      case PhlutsTextLeadingDistribution.proportional:
        return TextLeadingDistribution.proportional;
      case PhlutsTextLeadingDistribution.even:
        return TextLeadingDistribution.even;
    }
  }
}
