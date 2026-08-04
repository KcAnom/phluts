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
    Map<String, dynamic> headers = Map<String, dynamic>.from(
      request.headers ?? {},
    );
    _dio.options.headers = headers;
    _dio.options.contentType = request.contentType;

    switch (request.method) {
      case Method.get:
        return getRequest(request);
      case Method.post:
        return postRequest(request, context.mounted ? context : context);
      case Method.put:
        return putRequest(request);
      case Method.delete:
        return deleteRequest(request);
    }
  }

  static Future<Response?> getRequest(PhlutsNetworkRequest request) async {
    return _dio.get(
      request.url,
      data: request.body,
      queryParameters: request.queryParameters,
    );
  }

  static Future<Response?> postRequest(
    PhlutsNetworkRequest request,
    BuildContext context,
  ) async {
    final body = await _updateBody(context, request.body);

    return _dio.post(
      request.url,
      data: body,
      queryParameters: request.queryParameters,
    );
  }

  static Future<Response?> putRequest(PhlutsNetworkRequest request) async {
    return _dio.put(
      request.url,
      data: request.body,
      queryParameters: request.queryParameters,
    );
  }

  static Future<Response?> deleteRequest(PhlutsNetworkRequest request) async {
    return _dio.delete(
      request.url,
      data: request.body,
      queryParameters: request.queryParameters,
    );
  }

  static Future<dynamic> _updateBody(BuildContext context, dynamic body) async {
    Map<dynamic, dynamic> bodyMap = {};

    if (body is Map) {
      bodyMap.addAll(body);
      for (dynamic mapEntry in bodyMap.entries) {
        final key = mapEntry.key;
        final value = mapEntry.value;
        if (value is Map && value.containsKey('actionType')) {
          final dynamic callbackValue = await Future<dynamic>.value(
            Phluts.onCallFromJson(value as Map<String, dynamic>, context),
          );
          bodyMap[key] = callbackValue;
        }
      }
    }

    return bodyMap;
  }
}
