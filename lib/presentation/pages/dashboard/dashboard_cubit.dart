import 'package:bloc/bloc.dart';

import 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardState().init());



  void changeIndex(int index){
    emit(state.clone()..selectedIndex = index);
  }
}
