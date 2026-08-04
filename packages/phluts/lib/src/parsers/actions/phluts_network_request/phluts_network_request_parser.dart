import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:phluts/src/framework/framework.dart';
import 'package:phluts/src/services/phluts_network_service.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';
import 'package:phluts_logger/phluts_logger.dart';

class PhlutsNetworkRequestParser extends PhlutsActionParser<PhlutsNetworkRequest> {
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
      final result = model.results.firstWhere(
        (element) => element.statusCode == response?.statusCode,
      );

      if (context.mounted) {
        return Phluts.onCallFromJson(result.action, context);
      }
    }
  }
}
