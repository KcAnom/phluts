class PhlutsDouble {
  final double _value;

  const PhlutsDouble(this._value);

  static const PhlutsDouble zero = PhlutsDouble(0);
  static const PhlutsDouble infinity = PhlutsDouble(double.infinity);
  static const PhlutsDouble maxFinite = PhlutsDouble(double.maxFinite);
  static const PhlutsDouble minPositive = PhlutsDouble(double.minPositive);
  static const PhlutsDouble nan = PhlutsDouble(double.nan);
  static const PhlutsDouble negativeInfinity = PhlutsDouble(
    double.negativeInfinity,
  );

  factory PhlutsDouble.fromJson(dynamic json) => _fromJson(json);

  static PhlutsDouble _fromJson(dynamic json) {
    if (json is num) {
      return PhlutsDouble(json.toDouble());
    } else if (json is String) {
      return PhlutsDouble(json.parseDouble());
    }
    throw ("Unsupported PhlutsDouble value");
  }

  dynamic toJson() {
    if (_value == double.infinity) {
      return "infinity";
    } else if (_value == double.negativeInfinity) {
      return "negativeInfinity";
    } else if (_value.isNaN) {
      return "nan";
    } else if (_value == double.minPositive) {
      return "minPositive";
    } else if (_value == double.maxFinite) {
      return "maxFinite";
    }
    return _value;
  }
}

extension PhlutsDoubleParser on PhlutsDouble {
  double get parse {
    return _value.toDouble();
  }
}

extension on String {
  double parseDouble() {
    try {
      switch (this) {
        case "infinity":
          return double.infinity;
        case "negativeInfinity":
          return double.negativeInfinity;
        case "nan":
          return double.nan;
        case "minPositive":
          return double.minPositive;
        case "maxFinite":
          return double.maxFinite;
        default:
          return double.parse(this);
      }
    } catch (e) {
      throw ("Error parsing double: $this");
    }
  }
}
