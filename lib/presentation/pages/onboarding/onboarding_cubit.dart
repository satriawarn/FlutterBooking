import 'package:bloc/bloc.dart';

import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState().init());
}
