import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts/src/services/phluts_network_service.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';
import 'package:phluts_logger/phluts_logger.dart';

class PhlutsNetworkRequestParser
    extends PhlutsActionParser<PhlutsNetworkRequest> {
  const PhlutsNetworkRequestParser();

  @override
  String get actionType => ActionType.networkRequest.name;

  @override
  PhlutsNetworkRequest getModel(Map<String, dynamic> json) =>
      PhlutsNetworkRequest.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, PhlutsNetworkRequest model) async {
    Response<dynamic>? response;

    try {
      response = await PhlutsNetworkService.request(context, model);
    } on DioException catch (e) {
      response = e.response;
      Log.e(e.response);
    }

    if (response?.statusCode != null) {
      // `results` defaults to const [], and a request that declares no
      // follow-up action for the status it got back is ordinary, not
      // exceptional — firstWhere without orElse turned that into a StateError
      // on the happy path.
      PhlutsNetworkResult? result;
      for (final element in model.results) {
        if (element.statusCode == response?.statusCode) {
          result = element;
          break;
        }
      }

      if (result == null) {
        Log.w(
          'No result declared for status ${response?.statusCode} '
          'on ${model.url}; nothing to do',
        );
        return null;
      }

      if (context.mounted) {
        return Phluts.onCallFromJson(result.action, context);
      }
    }
    return null;
  }
}
