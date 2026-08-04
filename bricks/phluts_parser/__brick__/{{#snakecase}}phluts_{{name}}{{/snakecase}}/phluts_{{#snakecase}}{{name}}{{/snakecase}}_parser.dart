import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

class Phluts{{#pascalCase}}{{name}}{{/pascalCase}}Parser extends PhlutsParser<Phluts{{#pascalCase}}{{name}}{{/pascalCase}}> {
  @override
  Phluts{{#pascalCase}}{{name}}{{/pascalCase}} getModel(Map<String, dynamic> json) => Phluts{{#pascalCase}}{{name}}{{/pascalCase}}.fromJson(json);

  @override
  // TODO: implement type
  String get type => throw UnimplementedError();

  @override
  Widget parse(BuildContext context, Phluts{{#pascalCase}}{{name}}{{/pascalCase}} model) {
    // TODO: implement widget
    throw UnimplementedError();
  }
}