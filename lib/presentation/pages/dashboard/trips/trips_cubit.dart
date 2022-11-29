import 'package:bloc/bloc.dart';
import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/domain/controller/trip_controller.dart';
import 'package:logging/logging.dart';

import 'trips_state.dart';

class TripsCubit extends Cubit<TripsState> implements HttpState {
  TripsCubit() : super(TripsState().init());

  late final TripController _tripController = TripController(this);

  void getTrips() async {
    final trips = await _tripController.getTrips();
    Logger.root.info(trips.result?.toJson());
    emit(
      state.clone()
        ..topValue = trips.result?.topValue ?? []
        ..bottomValue = trips.result?.bottomValue ?? [],
    );
    Logger.root.info(
        'TripsCubit getTrips ${state.topValue.length} ${state.bottomValue.length}');
  }

  @override
  void onEndRequest(String url, String method) {
    // emit(
    //   state.clone()..status = HttpStateStatus.idle,
    // );
  }

  @override
  void onErrorRequest(String url, String method) {
    emit(
      state.clone()..status = HttpStateStatus.error,
    );
  }

  @override
  void onStartRequest(String url, String method) {
    emit(
      state.clone()..status = HttpStateStatus.loading,
    );
  }

  @override
  void onSuccessRequest(String url, String method) {
    emit(
      state.clone()..status = HttpStateStatus.success,
    );
  }
}
