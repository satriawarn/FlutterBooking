import 'package:bloc/bloc.dart';

import 'finish_state.dart';

class FinishCubit extends Cubit<FinishState> {
  FinishCubit() : super(FinishState().init());
}
