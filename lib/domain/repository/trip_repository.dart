import '../../data/model/base_response.dart';

abstract class TripRepository {
  Future<BaseResponse> getTrips();

  Future<BaseResponse> getTrip(int id);
}
