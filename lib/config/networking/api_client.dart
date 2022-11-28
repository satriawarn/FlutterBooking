import 'dart:convert';

import 'package:booking_aja/utils/helper/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

class ApiClient extends http.BaseClient {
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    Logger.root.info("=========REQUEST==========");

    if ((PrefHelper.instance.token ?? "").isNotEmpty) {
      request.headers
          .addAll({"Authorization": "Bearer ${PrefHelper.instance.token}"});
    }
    Logger.root.info(
        "Method ${request.method} => URL ${request.url}\nHeader ${request.headers}");

    return request.send().then((value) {
      Logger.root.info("StatusCode ${value.statusCode}");
      return value;
    }).catchError((err) async {
      debugPrint(err.toString());
      return http.StreamedResponse(
        Stream.fromIterable([err.toString().codeUnits]),
        500,
      );
    });
  }

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) {
    return super.get(url, headers: headers).then((value) {
      Logger.root.info("============RESPONSE==========");
      Logger.root.info("Response => ${value.body}");
      Logger.root.info("======================");
      return value;
    }).catchError((err) {
      debugPrint(err.toString());
    });
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, body, Encoding? encoding}) {
    return super
        .post(url, headers: headers, body: body, encoding: encoding)
        .then((value) {
      Logger.root.info("============RESPONSE==========");
      Logger.root.info("Response => ${value.body}");
      Logger.root.info("======================");
      return value;
    }).catchError((err) {
      debugPrint(err.toString());
    });
  }
}
