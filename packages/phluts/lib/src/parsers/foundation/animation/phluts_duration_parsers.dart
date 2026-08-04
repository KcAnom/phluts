import 'package:phluts_core/phluts_core.dart';

extension PhlutsDurationParser on PhlutsDuration {
  Duration get parse {
    return Duration(
      days: days ?? 0,
      hours: hours ?? 0,
      minutes: minutes ?? 0,
      seconds: seconds ?? 0,
      milliseconds: milliseconds ?? 0,
      microseconds: microseconds ?? 0,
    );
  }
}
