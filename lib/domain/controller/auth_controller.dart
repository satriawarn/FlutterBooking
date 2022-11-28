import 'dart:convert';

import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/data/endpoint/endpoint.dart';
import 'package:booking_aja/data/model/base_response.dart';
import 'package:booking_aja/domain/repository/auth_repository.dart';

class AuthController implements AuthRepository {
  final ApiClient _client = ApiClient();
  final HttpState _httpState;

  AuthController(this._httpState);

  @override
  Future<BaseResponse> forgotPassword(String email) async {
    String method = "POST";
    String url = Endpoint.forgotPassword;
    _httpState.onStartRequest(url, method);
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(url),
      body: {
        'email': email,
      },
    );

    _httpState.onEndRequest(url, method);
    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        _httpState.onSuccessRequest(url, method);
      } else {
        _httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      _httpState.onErrorRequest(url, method);
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> login(String email, String password) async {
    String method = "POST";
    String url = Endpoint.login;
    _httpState.onStartRequest(url, method);
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(url),
      body: {
        'email': email,
        'password': password,
      },
    );

    _httpState.onEndRequest(url, method);
    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        _httpState.onSuccessRequest(url, method);
      } else {
        _httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      _httpState.onErrorRequest(url, method);
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<void> logout() async {
    String method = "POST";
    String url = Endpoint.logout;
    _httpState.onStartRequest(url, method);

    await _client.post(
      Uri.parse(url),
      body: {},
    ).then((value) {
      if (value.statusCode > 199 && value.statusCode < 300) {
        _httpState.onSuccessRequest(url, method);
      } else {
        _httpState.onErrorRequest(url, method);
      }
    }).catchError((err) {
      _httpState.onErrorRequest(url, method);
    });

    _httpState.onEndRequest(url, method);
  }

  @override
  Future<BaseResponse> register(
    String name,
    String email,
    String password,
  ) async {
    String method = "POST";
    String url = Endpoint.register;
    _httpState.onStartRequest(url, method);

    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(url),
      body: {
        'email': email,
        'name': name,
        'password': password,
      },
    );

    _httpState.onEndRequest(url, method);
    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        _httpState.onSuccessRequest(url, method);
      } else {
        _httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      _httpState.onErrorRequest(url, method);
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }
}
