import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'onboarding_cubit.dart';
import 'onboarding_state.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OnboardingCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);

    return Container();
  }
}


