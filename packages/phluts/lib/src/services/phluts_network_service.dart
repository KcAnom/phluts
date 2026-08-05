import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts_core/actions/network_request/phluts_network_request.dart';

class PhlutsNetworkService {
  const PhlutsNetworkService._();

  static late Dio _dio;

  static void initialize(Dio dio) => _dio = dio;

  static Future<Response?> request(
    BuildContext context,
    PhlutsNetworkRequest request,
  ) async {
    // Per-request Options, never BaseOptions. `_dio` is supplied by the host
    // app and is usually its own client, so assigning onto `options.headers`
    // replaced whatever it was configured with — auth headers included — for
    // this call and every later one, Phluts or not, and concurrent requests
    // raced on each other's headers. Dio merges Options over BaseOptions, so
    // per-call values win without destroying the caller's defaults.
    final options = Options(
      headers: request.headers == null
          ? null
          : Map<String, dynamic>.from(request.headers!),
      contentType: request.contentType,
    );

    switch (request.method) {
      case Method.get:
        return getRequest(request, options: options);
      case Method.post:
        return postRequest(request, context, options: options);
      case Method.put:
        return putRequest(request, options: options);
      case Method.delete:
        return deleteRequest(request, options: options);
    }
  }

  static Future<Response?> getRequest(
    PhlutsNetworkRequest request, {
    Options? options,
  }) async {
    return _dio.get(
      request.url,
      data: request.body,
      queryParameters: request.queryParameters,
      options: options,
    );
  }

  static Future<Response?> postRequest(
    PhlutsNetworkRequest request,
    BuildContext context, {
    Options? options,
  }) async {
    final body = await _updateBody(context, request.body);

    return _dio.post(
      request.url,
      data: body,
      queryParameters: request.queryParameters,
      options: options,
    );
  }

  static Future<Response?> putRequest(
    PhlutsNetworkRequest request, {
    Options? options,
  }) async {
    return _dio.put(
      request.url,
      data: request.body,
      queryParameters: request.queryParameters,
      options: options,
    );
  }

  static Future<Response?> deleteRequest(
    PhlutsNetworkRequest request, {
    Options? options,
  }) async {
    return _dio.delete(
      request.url,
      data: request.body,
      queryParameters: request.queryParameters,
      options: options,
    );
  }

  static Future<dynamic> _updateBody(BuildContext context, dynamic body) async {
    // PhlutsNetworkRequest.body is documented as "a map, list, string, or bytes
    // depending on encoder". Only a map can carry action placeholders to
    // resolve; everything else has to pass through untouched. Building a fresh
    // map and returning it unconditionally meant a list or string body was
    // silently replaced with {} on the wire — and only for POST, since the
    // other verbs never call this.
    if (body is! Map) return body;

    final Map<dynamic, dynamic> bodyMap = Map<dynamic, dynamic>.from(body);
    for (final mapEntry in bodyMap.entries.toList()) {
      final key = mapEntry.key;
      final value = mapEntry.value;
      if (value is Map && value.containsKey('actionType')) {
        final dynamic callbackValue = await Future<dynamic>.value(
          Phluts.onCallFromJson(value as Map<String, dynamic>, context),
        );
        bodyMap[key] = callbackValue;
      }
    }

    return bodyMap;
  }
}
