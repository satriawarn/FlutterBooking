import 'dart:convert';

import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/data/model/base_response.dart';
import 'package:booking_aja/domain/repository/repository.dart';

import '../../data/endpoint/endpoint.dart';

class TripController implements TripRepository {
  final ApiClient _client = ApiClient();
  final HttpState httpState;

  TripController(this.httpState);

  @override
  Future<BaseResponse> getTrip(int id) async {
    String url = "${Endpoint.trips}/$id";
    String method = "GET";
    httpState.onStartRequest(url, method);

    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(url),
    );

    httpState.onEndRequest(url, method);

    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        httpState.onSuccessRequest(url, method);
      } else {
        httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      httpState.onErrorRequest(url, method);
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> getTrips() async {
    String url = Endpoint.trips;
    String method = "GET";

    httpState.onStartRequest(url, method);
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(url),
    );

    httpState.onEndRequest(url, method);
    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        httpState.onSuccessRequest(url, method);
      } else {
        httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      httpState.onErrorRequest(url, method);
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }
}
