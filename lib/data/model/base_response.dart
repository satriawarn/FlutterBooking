import 'package:booking_aja/data/model/auth/login.dart';
import 'package:booking_aja/data/model/trip/trip.dart';

class BaseResponse {
  BaseResponse({
    this.message,
    this.result,
  });

  BaseResponse.fromJson(dynamic json) {
    message = json['message'];
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }

  String? message;
  Result? result;

  BaseResponse copyWith({
    String? message,
    Result? result,
  }) =>
      BaseResponse(
        message: message ?? this.message,
        result: result ?? this.result,
      );
}

class Result {
  Result({
    this.login,
    this.trip,
    this.topValue,
    this.bottomValue,
  });

  Result.fromJson(dynamic json) {
    login = json['login'] != null ? Login.fromJson(json['login']) : null;
    trip = json['trip'] != null ? Trip.fromJson(json['trip']) : null;
    if (json['top'] != null) {
      topValue = [];
      json['top'].forEach((v) {
        topValue?.add(Trip.fromJson(v));
      });
    }

    if (json['bottom'] != null) {
      topValue = [];
      json['bottom'].forEach((v) {
        topValue?.add(Trip.fromJson(v));
      });
    }
  }

  Login? login;
  Trip? trip;
  List<Trip>? topValue;
  List<Trip>? bottomValue;

  Result copyWith({
    Login? login,
    Trip? trip,
    List<Trip>? topValue,
    List<Trip>? bottomValue,
  }) =>
      Result(
        login: login ?? this.login,
        trip: trip ?? this.trip,
        topValue: topValue ?? this.topValue,
        bottomValue: bottomValue ?? this.bottomValue,
      );
}
