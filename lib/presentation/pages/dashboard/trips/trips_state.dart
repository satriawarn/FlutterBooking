import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/data/model/trip/trip.dart';

class TripsState {
  List<Trip> topValue = [];
  List<Trip> bottomValue = [];
  HttpStateStatus status = HttpStateStatus.initial;

  TripsState init() {
    return TripsState();
  }

  TripsState clone() {
    return TripsState();
  }
}
