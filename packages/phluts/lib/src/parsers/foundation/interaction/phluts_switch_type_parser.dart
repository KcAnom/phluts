import 'package:phluts_core/phluts_core.dart';

extension PhlutsSwitchTypeParser on PhlutsSwitchType {
  PhlutsSwitchType get parse {
    switch (this) {
      case PhlutsSwitchType.adaptive:
        return PhlutsSwitchType.adaptive;
      case PhlutsSwitchType.cupertino:
        return PhlutsSwitchType.cupertino;
      case PhlutsSwitchType.material:
        return PhlutsSwitchType.material;
    }
  }
}
