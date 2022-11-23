import 'package:booking_aja/presentation/pages/onboarding/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/config.dart';
import '../onboarding_cubit.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            cubit.state.onboardingList.length,
            (index) => index == cubit.state.currentIndex
                ? _activeIndicator(index)
                : _inActiveIndicator(index),
          ),
        );
      },
    );
  }

  Widget _activeIndicator(int index) {
    return Container(
      height: 6,
      width: 16,
      margin: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
      decoration: BoxDecoration(
        color: AppColor.accentPink,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _inActiveIndicator(int index) {
    return Container(
      height: 6,
      width: 6,
      margin: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
      decoration: BoxDecoration(
        color: AppColor.ink03,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
