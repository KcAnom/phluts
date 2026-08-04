// This file handles conditional imports based on platform
// It exports the appropriate implementation of PhlutsImageParser

export 'phluts_image_parser_stub.dart'
    if (dart.library.io) 'phluts_image_parser_io.dart'
    if (dart.library.html) 'phluts_image_parser_web.dart'
    if (dart.library.wasm) 'phluts_image_parser_web.dart';
