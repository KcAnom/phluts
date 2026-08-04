import 'package:phluts_logger/phluts_logger.dart';
import 'package:phluts_framework/phluts_framework.dart';

class PhlutsRegistry {
  PhlutsRegistry._internal();

  static final PhlutsRegistry _singleton = PhlutsRegistry._internal();

  factory PhlutsRegistry() => _singleton;

  static PhlutsRegistry get instance => _singleton;

  static final _phlutsParsers = <String, PhlutsParser>{};

  static final _phlutsActionParsers = <String, PhlutsActionParser>{};

  static final Map<String, dynamic> _variables = {};

  bool register(PhlutsParser parser, [bool override = false]) {
    final String type = parser.type;
    if (_phlutsParsers.containsKey(type)) {
      if (override) {
        Log.w('Widget $type is being overridden');
        _phlutsParsers[type] = parser;
        return true;
      } else {
        Log.w('Parser $type is already registered');
        return false;
      }
    } else {
      _phlutsParsers[type] = parser;
      return true;
    }
  }

  bool registerAction(PhlutsActionParser parser, [bool override = false]) {
    final String type = parser.actionType;
    if (_phlutsActionParsers.containsKey(type)) {
      if (override) {
        Log.w('Action $type is being overridden');
        _phlutsActionParsers[type] = parser;
        return true;
      } else {
        Log.w('Action $type is already registered');
        return false;
      }
    } else {
      _phlutsActionParsers[type] = parser;
      return true;
    }
  }

  Future<dynamic> registerAll(
    List<PhlutsParser> parsers, [
    bool override = false,
  ]) {
    return Future.forEach(parsers, (PhlutsParser parser) {
      return register(parser, override);
    });
  }

  Future<dynamic> registerAllActions(
    List<PhlutsActionParser> parsers, [
    bool override = false,
  ]) {
    return Future.forEach(parsers, (PhlutsActionParser parser) {
      return registerAction(parser, override);
    });
  }

  PhlutsParser<dynamic>? getParser(String type) {
    return _phlutsParsers[type];
  }

  PhlutsActionParser<dynamic>? getActionParser(String type) {
    return _phlutsActionParsers[type];
  }

  dynamic setValue(String key, dynamic value) {
    if (value == null) {
      removeValue(key);
    } else {
      _variables[key] = value;
    }
  }

  dynamic removeValue(String key) {
    return _variables.remove(key);
  }

  dynamic getValue(String key) {
    return _variables[key];
  }
}
