import 'dart:convert';

import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/data/model/base_response.dart';
import 'package:booking_aja/domain/repository/repository.dart';

import '../../data/endpoint/endpoint.dart';

class TripController implements TripRepository {
  final ApiClient _client = ApiClient();

  @override
  Future<BaseResponse> getTrip(int id) async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse("${Endpoint.trip}/$id"),
    );

    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> getTrips() async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(Endpoint.trip),
    );

    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }
}
