import 'package:freezed_annotation/freezed_annotation.dart';

part '{{#snakeCase}}phluts_{{name}}{{/snakeCase}}.freezed.dart';
part '{{#snakeCase}}phluts_{{name}}{{/snakeCase}}.g.dart';

@freezed
abstract class Phluts{{#pascalCase}}{{name}}{{/pascalCase}} with _$Phluts{{#pascalCase}}{{name}}{{/pascalCase}} {
  const factory Phluts{{#pascalCase}}{{name}}{{/pascalCase}}() = _Phluts{{#pascalCase}}{{name}}{{/pascalCase}};

  factory Phluts{{#pascalCase}}{{name}}{{/pascalCase}}.fromJson(Map<String, dynamic> json) => _$Phluts{{#pascalCase}}{{name}}{{/pascalCase}}FromJson(json);
}
