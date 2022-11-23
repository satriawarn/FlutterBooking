import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../onboarding_cubit.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OnboardingCubit>(context);
    return Expanded(
      child: PageView.builder(
        itemBuilder: (c, i) => Image.asset(
          cubit.state.onboardingList[i].image ?? "",
        ),
        itemCount: cubit.state.onboardingList.length,
        onPageChanged: cubit.goTo,
      ),
    );
  }
}
