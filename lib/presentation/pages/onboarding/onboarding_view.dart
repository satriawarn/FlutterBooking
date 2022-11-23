import 'package:booking_aja/utils/extension/double_extension.dart';
import 'package:booking_aja/presentation/pages/onboarding/component/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'onboarding_cubit.dart';
import 'onboarding_state.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OnboardingCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            const OnBoardingImage(),
            32.0.height,
            const OnBoardingTitle(),
            45.0.height,
            const OnBoardingIndicator(),
            53.0.height,
            const OnBoardingButton(),
            82.9.height,
          ],
        ),
      ),
    );
  }
}
