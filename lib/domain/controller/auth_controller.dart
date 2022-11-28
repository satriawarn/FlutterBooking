import 'dart:convert';

import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/data/endpoint/endpoint.dart';
import 'package:booking_aja/data/model/base_response.dart';
import 'package:booking_aja/domain/repository/auth_repository.dart';

class AuthController implements AuthRepository {
  final ApiClient _client = ApiClient();

  @override
  Future<BaseResponse> forgotPassword(String email) async {
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(Endpoint.forgotPassword),
      body: {
        'email': email,
      },
    );

    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> login(String email, String password) async {
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(Endpoint.login),
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<void> logout() async {
    await _client.post(
      Uri.parse(Endpoint.logout),
      body: {},
    );
  }

  @override
  Future<BaseResponse> register(
      String name, String email, String password) async {
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(Endpoint.register),
      body: {
        'email': email,
        'name': name,
        'password': password,
      },
    );

    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }
}
